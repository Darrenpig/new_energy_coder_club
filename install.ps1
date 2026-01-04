#requires -Version 5.1
<# 
new-here install.ps1 (wegt schema v1.1)
- Supports: install.mode (download/redirect/manual)
- Supports fetch.source: github_release | direct
- Supports: asset_match + priority_ext
- Supports: silent_install (windows)
- Supports: install_steps: ensure_dir/move/extract/shortcut/run
Best practice:
- strict mode, robust error handling, logging, idempotent directories
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

param(
  [string]$ToolsFile = (Join-Path $PSScriptRoot "tools\tools.yaml"),
  [string[]]$Ids,
  [string]$Category,
  [switch]$NonInteractive,
  [switch]$PlanOnly,
  [switch]$SkipRedirectOpen,
  [string]$BinDir = (Join-Path $env:LOCALAPPDATA "new-here\bin"),
  [string]$AppDir = (Join-Path $env:LOCALAPPDATA "new-here\apps"),
  [string]$CacheDir = (Join-Path $env:LOCALAPPDATA "new-here\cache")
)

function Write-Log {
  param(
    [ValidateSet("INFO","WARN","ERROR","OK")][string]$Level,
    [string]$Message
  )
  $ts = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
  switch ($Level) {
    "INFO"  { Write-Host "[$ts] [INFO ] $Message" -ForegroundColor Cyan }
    "WARN"  { Write-Host "[$ts] [WARN ] $Message" -ForegroundColor Yellow }
    "ERROR" { Write-Host "[$ts] [ERROR] $Message" -ForegroundColor Red }
    "OK"    { Write-Host "[$ts] [OK   ] $Message" -ForegroundColor Green }
  }
}

function Ensure-Dir([string]$Path) {
  if (-not (Test-Path -LiteralPath $Path)) {
    New-Item -ItemType Directory -Path $Path | Out-Null
  }
}

function Get-Arch {
  $arch = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture.ToString()
  switch -Regex ($arch) {
    "Arm64" { return "arm64" }
    default { return "x64" }
  }
}

$OS = "windows"
$ARCH = Get-Arch
Write-Log INFO "Detected OS=$OS ARCH=$ARCH"

function Invoke-Download {
  param(
    [Parameter(Mandatory)] [string]$Url,
    [Parameter(Mandatory)] [string]$OutFile
  )
  Write-Log INFO "Downloading: $Url"
  Ensure-Dir (Split-Path -Parent $OutFile)
  try {
    if (Get-Command Start-BitsTransfer -ErrorAction SilentlyContinue) {
      Start-BitsTransfer -Source $Url -Destination $OutFile -ErrorAction Stop
    } else {
      Invoke-WebRequest -Uri $Url -OutFile $OutFile -UseBasicParsing
    }
  } catch {
    Invoke-WebRequest -Uri $Url -OutFile $OutFile -UseBasicParsing
  }
  if (-not (Test-Path -LiteralPath $OutFile)) { throw "Download failed: $Url" }
  Write-Log OK "Saved: $OutFile"
}

function Get-YqExe {
  $yqPath = Join-Path $CacheDir "bin\yq.exe"
  if (Test-Path -LiteralPath $yqPath) { return $yqPath }
  Ensure-Dir (Split-Path -Parent $yqPath)
  Write-Log INFO "yq not found. Bootstrapping yq.exe to parse YAML..."
  $repo = "mikefarah/yq"
  $api = "https://api.github.com/repos/$repo/releases/latest"
  $resp = Invoke-RestMethod -Uri $api -Headers @{ "User-Agent"="new-here-installer" }
  $want = if ($ARCH -eq "arm64") { "yq_windows_arm64.exe" } else { "yq_windows_amd64.exe" }
  $asset = $resp.assets | Where-Object { $_.name -eq $want } | Select-Object -First 1
  if (-not $asset) { throw "Cannot find yq asset: $want" }
  Invoke-Download -Url $asset.browser_download_url -OutFile $yqPath
  return $yqPath
}

function Read-ToolsYaml {
  param([string]$Path)
  if (-not (Test-Path -LiteralPath $Path)) { throw "Tools file not found: $Path" }
  $yq = Get-YqExe
  $json = & $yq e -o=json $Path 2>$null
  if (-not $json) { throw "Failed to parse YAML: $Path" }
  $obj = $json | ConvertFrom-Json
  if (-not $obj.tools) { throw "Invalid tools.yaml: missing 'tools' array" }
  return $obj
}

function Select-Asset {
  param(
    [Parameter(Mandatory)] $Assets,
    [Parameter(Mandatory)] $MatchRule,
    [string[]]$PriorityExt
  )
  $include = @(); $exclude = @()
  if ($MatchRule.include) { $include = @($MatchRule.include) }
  if ($MatchRule.exclude) { $exclude = @($MatchRule.exclude) }
  $candidates = @()
  foreach ($a in $Assets) {
    $name = [string]$a.name
    $lname = $name.ToLowerInvariant()
    $excluded = $false
    foreach ($x in $exclude) {
      if ($lname -like ("*" + ([string]$x).ToLowerInvariant() + "*")) { $excluded = $true; break }
    }
    if ($excluded) { continue }
    $ok = $true
    foreach ($t in $include) {
      if (-not ($lname -like ("*" + ([string]$t).ToLowerInvariant() + "*"))) { $ok = $false; break }
    }
    if (-not $ok) { continue }
    $candidates += $a
  }
  if ($candidates.Count -eq 0) { return $null }
  if ($candidates.Count -eq 1) { return $candidates[0] }
  if ($PriorityExt -and $PriorityExt.Count -gt 0) {
    foreach ($ext in $PriorityExt) {
      $e = "." + $ext.TrimStart(".").ToLowerInvariant()
      $hit = $candidates | Where-Object { ([string]$_.name).ToLowerInvariant().EndsWith($e) } | Select-Object -First 1
      if ($hit) { return $hit }
    }
  }
  return ($candidates | Sort-Object { $_.name.Length } | Select-Object -First 1)
}

function Resolve-GitHubAsset {
  param(
    [Parameter(Mandatory)][string]$Repo,
    [Parameter(Mandatory)][string]$Version,
    [Parameter(Mandatory)]$AssetMatch,
    [string[]]$PriorityExt
  )
  $headers = @{ "User-Agent"="new-here-installer" }
  $release = $null
  if ($Version -eq "latest") {
    $api = "https://api.github.com/repos/$Repo/releases/latest"
    $release = Invoke-RestMethod -Uri $api -Headers $headers
  } elseif ($Version -like "regex:*") {
    $pattern = $Version.Substring("regex:".Length)
    $api = "https://api.github.com/repos/$Repo/releases"
    $releases = Invoke-RestMethod -Uri $api -Headers $headers
    $release = $releases | Where-Object { $_.tag_name -match $pattern } | Select-Object -First 1
  } else {
    $tag = $Version
    $api = "https://api.github.com/repos/$Repo/releases/tags/$tag"
    $release = Invoke-RestMethod -Uri $api -Headers $headers
  }
  if (-not $release) { throw "Cannot resolve release: repo=$Repo version=$Version" }
  if (-not $release.assets) { throw "Release has no assets: $Repo $($release.tag_name)" }
  $rule = $null
  if ($AssetMatch.$OS -and $AssetMatch.$OS.$ARCH) {
    $rule = $AssetMatch.$OS.$ARCH
  } elseif ($AssetMatch.$OS -and $AssetMatch.$OS.x64) {
    $rule = $AssetMatch.$OS.x64
  }
  if (-not $rule) { throw "No asset_match rule for OS=$OS ARCH=$ARCH in $Repo" }
  $asset = Select-Asset -Assets $release.assets -MatchRule $rule -PriorityExt $PriorityExt
  if (-not $asset) {
    $names = ($release.assets | ForEach-Object { $_.name }) -join ", "
    throw "No matching asset found for $Repo ($($release.tag_name)). Assets: $names"
  }
  return @{ tag = $release.tag_name; name = $asset.name; url = $asset.browser_download_url }
}

function New-Shortcut {
  param(
    [Parameter(Mandatory)] [string]$Target,
    [ValidateSet("desktop","startmenu")][string]$Where = "desktop",
    [string]$Name
  )
  if (-not $Name) { $Name = [IO.Path]::GetFileNameWithoutExtension($Target) }
  $shell = New-Object -ComObject WScript.Shell
  $dir = if ($Where -eq "startmenu") { Join-Path $env:APPDATA "Microsoft\Windows\Start Menu\Programs" } else { [Environment]::GetFolderPath("Desktop") }
  $lnk = Join-Path $dir ($Name + ".lnk")
  $sc = $shell.CreateShortcut($lnk)
  $sc.TargetPath = $Target
  $sc.WorkingDirectory = Split-Path -Parent $Target
  $sc.Save()
  Write-Log OK "Shortcut created: $lnk"
}

function Expand-ArchiveSmart {
  param([Parameter(Mandatory)] [string]$Archive, [Parameter(Mandatory)] [string]$To)
  Ensure-Dir $To
  $ext = ([IO.Path]::GetExtension($Archive)).ToLowerInvariant()
  if ($ext -eq ".zip") {
    Expand-Archive -Path $Archive -DestinationPath $To -Force
  } else {
    throw "Unsupported archive type for auto-extract: $ext (only .zip supported by default)"
  }
}

function Run-InstallerIfPossible {
  param([Parameter(Mandatory)] [string]$File, $SilentInstall)
  $ext = ([IO.Path]::GetExtension($File)).ToLowerInvariant()
  if ($ext -eq ".msi") {
    $args = "/i `"$File`""
    if ($SilentInstall -and $SilentInstall.windows -and $SilentInstall.windows.msi) {
      $args += " " + $SilentInstall.windows.msi
    } else { $args += " /passive" }
    Write-Log INFO "Running MSI: msiexec.exe $args"
    Start-Process -FilePath "msiexec.exe" -ArgumentList $args -Wait
    return
  }
  if ($ext -eq ".exe") {
    if ($SilentInstall -and $SilentInstall.windows -and $SilentInstall.windows.exe) {
      $args = $SilentInstall.windows.exe
      Write-Log INFO "Running EXE silently: $File $args"
      Start-Process -FilePath $File -ArgumentList $args -Wait
    } else {
      Write-Log WARN "No silent_install for EXE. Opening installer UI: $File"
      Start-Process -FilePath $File
    }
    return
  }
  Write-Log WARN "Unknown installer type ($ext). Opening: $File"
  Start-Process -FilePath $File
}

function Execute-InstallSteps {
  param($Steps, [hashtable]$Vars)
  if (-not $Steps) { return }
  foreach ($s in $Steps) {
    $type = [string]$s.type
    switch ($type) {
      "ensure_dir" {
        $p = $s.path.Replace('${BIN_DIR}', $Vars.BIN_DIR).Replace('${APP_DIR}', $Vars.APP_DIR).Replace('${CACHE_DIR}', $Vars.CACHE_DIR)
        Ensure-Dir $p
        Write-Log OK "ensure_dir: $p"
      }
      "move" {
        $from = $s.from.Replace('${DOWNLOADED_FILE}', $Vars.DOWNLOADED_FILE)
        $to = $s.to.Replace('${BIN_DIR}', $Vars.BIN_DIR).Replace('${APP_DIR}', $Vars.APP_DIR).Replace('${CACHE_DIR}', $Vars.CACHE_DIR)
        Ensure-Dir (Split-Path -Parent $to)
        Move-Item -LiteralPath $from -Destination $to -Force
        Write-Log OK "move: $from -> $to"
      }
      "extract" {
        $from = $s.from.Replace('${DOWNLOADED_FILE}', $Vars.DOWNLOADED_FILE)
        $to = $s.to.Replace('${BIN_DIR}', $Vars.BIN_DIR).Replace('${APP_DIR}', $Vars.APP_DIR).Replace('${CACHE_DIR}', $Vars.CACHE_DIR)
        Expand-ArchiveSmart -Archive $from -To $to
        Write-Log OK "extract: $from -> $to"
      }
      "shortcut" {
        $target = $s.target.Replace('${BIN_DIR}', $Vars.BIN_DIR).Replace('${APP_DIR}', $Vars.APP_DIR).Replace('${CACHE_DIR}', $Vars.CACHE_DIR)
        $where = if ($s.where) { [string]$s.where } else { "desktop" }
        New-Shortcut -Target $target -Where $where
      }
      "run" {
        $cmd = [string]$s.cmd
        if (-not $cmd) { throw "install_steps.run missing cmd" }
        Write-Log WARN "run: $cmd"
        Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command $cmd" -Wait
      }
      default { throw "Unknown install_step type: $type" }
    }
  }
}

$doc = Read-ToolsYaml -Path $ToolsFile
$tools = @($doc.tools)
$tools = $tools | Where-Object { -not $_.supports -or ($_.supports -contains "windows") }
if ($Category) { $tools = $tools | Where-Object { $_.category -eq $Category } }
if ($Ids -and $Ids.Count -gt 0) {
  $set = New-Object 'System.Collections.Generic.HashSet[string]'
  foreach ($id in $Ids) { [void]$set.Add($id) }
  $tools = $tools | Where-Object { $set.Contains([string]$_.id) }
}
if (-not $tools -or $tools.Count -eq 0) { Write-Log WARN "No tools selected."; exit 0 }

if (-not $NonInteractive -and (-not $Ids -or $Ids.Count -eq 0)) {
  Write-Host ""
  Write-Host "Selected candidates:" -ForegroundColor White
  $i = 1
  foreach ($t in $tools) {
    Write-Host ("[{0}] {1} ({2}, {3})" -f $i, $t.name, $t.category, $t.license)
    $i++
  }
  Write-Host ""
  $ans = Read-Host "Install ALL above? (y/N)"
  if ($ans.ToLowerInvariant() -ne "y") {
    $pick = Read-Host "Enter numbers (comma-separated), e.g. 1,3,5"
    $nums = $pick -split "," | ForEach-Object { $_.Trim() } | Where-Object { $_ -match '^\d+$' } | ForEach-Object { [int]$_ }
    $selected = @()
    foreach ($n in $nums) { if ($n -ge 1 -and $n -le $tools.Count) { $selected += $tools[$n-1] } }
    $tools = $selected
  }
}

Ensure-Dir $BinDir; Ensure-Dir $AppDir; Ensure-Dir $CacheDir; Ensure-Dir (Join-Path $CacheDir "downloads")
Write-Log INFO "BIN_DIR=$BinDir"; Write-Log INFO "APP_DIR=$AppDir"; Write-Log INFO "CACHE_DIR=$CacheDir"

Write-Host ""; Write-Log INFO "Install plan:"
foreach ($t in $tools) {
  $mode = if ($t.install -and $t.install.mode) { $t.install.mode } else { "redirect" }
  Write-Host ("- {0} [{1}] mode={2}" -f $t.id, $t.name, $mode)
}
if ($PlanOnly) { Write-Log OK "PlanOnly set. Exiting."; exit 0 }

foreach ($t in $tools) {
  $id = [string]$t.id; $name = [string]$t.name
  $mode = if ($t.install -and $t.install.mode) { [string]$t.install.mode } else { "redirect" }
  Write-Host ""; Write-Log INFO "=== Installing: $name ($id) mode=$mode ==="
  try {
    if ($mode -eq "redirect") {
      if ($SkipRedirectOpen) { Write-Log WARN "redirect skipped: $name" } else {
        $url = $null
        if ($t.install.windows -and $t.install.windows.url) { $url = [string]$t.install.windows.url }
        elseif ($t.install.product -and $t.install.product.url) { $url = [string]$t.install.product.url }
        elseif ($t.install.download -and $t.install.download.url) { $url = [string]$t.install.download.url }
        elseif ($t.install.official -and $t.install.official.url) { $url = [string]$t.install.official.url }
        if (-not $url) { throw "No redirect URL found in tool: $id" }
        Write-Log INFO "Opening: $url"; Start-Process $url
      }
      Write-Log OK "Done (redirect): $name"; continue
    }
    if ($mode -eq "manual") {
      $note = if ($t.install.note) { [string]$t.install.note } else { "(no note provided)" }
      Write-Log WARN "Manual install required for $name:"; Write-Host $note; continue
    }
    if ($mode -ne "download") { throw "Unknown install.mode: $mode" }
    $dl = $null; $dlName = $null
    if ($t.fetch -and $t.fetch.source) {
      $src = [string]$t.fetch.source
      if ($src -eq "github_release") {
        $resolved = Resolve-GitHubAsset -Repo $t.fetch.repo -Version $t.fetch.version -AssetMatch $t.fetch.asset_match -PriorityExt $t.fetch.priority_ext
        $dl = $resolved.url; $dlName = $resolved.name
        Write-Log INFO "Resolved GitHub asset: $($t.fetch.repo) $($resolved.tag) -> $dlName"
      } elseif ($src -eq "direct") {
        $dl = [string]$t.fetch.url
        $dlName = if ($t.fetch.name) { [string]$t.fetch.name } else { Split-Path -Leaf $dl }
        Write-Log INFO "Direct URL: $dl"
      } else { throw "Unknown fetch.source: $src" }
    } else {
      if ($t.install.windows -and $t.install.windows.url) {
        $dl = [string]$t.install.windows.url; $dlName = Split-Path -Leaf $dl
        Write-Log WARN "No fetch.*. Using install.windows.url as direct download."
      } else { throw "download mode but no fetch/source or install.windows.url found: $id" }
    }
    $outFile = Join-Path (Join-Path $CacheDir "downloads") ($id + "__" + $dlName)
    Invoke-Download -Url $dl -OutFile $outFile
    $vars = @{ BIN_DIR = $BinDir; APP_DIR = $AppDir; CACHE_DIR = $CacheDir; DOWNLOADED_FILE = $outFile }
    if ($t.install_steps -and $t.install_steps.windows) { Execute-InstallSteps -Steps $t.install_steps.windows -Vars $vars; Write-Log OK "Done (steps): $name"; continue }
    $ext = ([IO.Path]::GetExtension($outFile)).ToLowerInvariant()
    if ($ext -eq ".zip") { $dest = Join-Path $AppDir $id; Expand-ArchiveSmart -Archive $outFile -To $dest; Write-Log OK "Extracted to: $dest"; continue }
    if ($ext -in @(".exe",".msi")) { Run-InstallerIfPossible -File $outFile -SilentInstall $t.silent_install; Write-Log OK "Installer executed: $name"; continue }
    Write-Log WARN "Downloaded file type not handled automatically ($ext). File: $outFile"; Start-Process (Split-Path -Parent $outFile)
  } catch {
    Write-Log ERROR "Failed: $name ($id) -> $($_.Exception.Message)"; continue
  }
}
Write-Host ""; Write-Log OK "All done."; Write-Log INFO "Tip: Add BIN_DIR to PATH if you place portable executables there."
