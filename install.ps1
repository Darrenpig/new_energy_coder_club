$ErrorActionPreference = 'Stop'

param(
  [ValidateSet('minimal','full-dev','maker','custom')]
  [string]$Mode = 'minimal',
  [switch]$UseMirror,
  [switch]$IncludeCommercial
)

function Read-YamlSimple {
  param([string]$Path)
  if (-not (Test-Path $Path)) { throw "tools file not found: $Path" }
  $lines = Get-Content -Path $Path
  $tools = @()
  $current = $null
  $context = @()
  foreach ($line in $lines) {
    $l = $line.Trim()
    if ($l -match '^tools:') { continue }
    if ($l -match '^- +id:\s*(.+)$') {
      if ($current) { $tools += $current }
      $current = [ordered]@{ id = $Matches[1].Trim(); name=''; category=''; license=''; open_source=$false; size_hint=''; description=''; install_mode=''; win_url=''; win_checksum=''; linux_url=''; linux_checksum='' }
      $context = @()
      continue
    }
    if (-not $current) { continue }
    if ($l -match '^name:\s*(.+)$') { $current.name = $Matches[1].Trim(); continue }
    if ($l -match '^category:\s*(.+)$') { $current.category = $Matches[1].Trim(); continue }
    if ($l -match '^license:\s*(.+)$') { $current.license = $Matches[1].Trim(); continue }
    if ($l -match '^open_source:\s*(.+)$') { $current.open_source = [bool]::Parse($Matches[1].Trim()); continue }
    if ($l -match '^size_hint:\s*(.+)$') { $current.size_hint = $Matches[1].Trim(); continue }
    if ($l -match '^description:\s*(.+)$') { $current.description = $Matches[1].Trim(); continue }
    if ($l -match '^install:\s*$') { $context = @('install'); continue }
    if ($context -contains 'install' -and $l -match '^mode:\s*(.+)$') { $current.install_mode = $Matches[1].Trim(); continue }
    if ($context -contains 'install' -and $l -match '^windows:\s*$') { $context = @('install','windows'); continue }
    if ($context -contains 'windows' -and $l -match '^url:\s*(.+)$') { $current.win_url = $Matches[1].Trim(); continue }
    if ($context -contains 'windows' -and $l -match '^checksum:\s*sha256:(.+)$') { $current.win_checksum = $Matches[1].Trim(); continue }
    if ($context -contains 'install' -and $l -match '^linux:\s*$') { $context = @('install','linux'); continue }
    if ($context -contains 'linux' -and $l -match '^url:\s*(.+)$') { $current.linux_url = $Matches[1].Trim(); continue }
    if ($context -contains 'linux' -and $l -match '^checksum:\s*sha256:(.+)$') { $current.linux_checksum = $Matches[1].Trim(); continue }
  }
  if ($current) { $tools += $current }
  return $tools
}

function Apply-Mirror {
  param([string]$Url)
  if (-not $UseMirror) { return $Url }
  $mfile = Join-Path $PSScriptRoot 'tools\mirrors.yaml'
  if (-not (Test-Path $mfile)) { return $Url }
  $lines = Get-Content -Path $mfile
  $match = $null; $replace = $null
  foreach ($l in $lines) {
    $t = $l.Trim()
    if ($t -match '^match:\s*(.+)$') { $match = $Matches[1].Trim(); continue }
    if ($t -match '^replace:\s*(.+)$') { $replace = $Matches[1].Trim(); continue }
    if ($match -and $replace) {
      if ($Url -like "*$match*") { return ($Url -replace [regex]::Escape($match), $replace) }
      $match = $null; $replace = $null
    }
  }
  return $Url
}

function Download-File {
  param([string]$Url, [string]$OutPath)
  $final = Apply-Mirror -Url $Url
  Write-Host "Downloading: $final -> $OutPath"
  try {
    Invoke-WebRequest -Uri $final -OutFile $OutPath -UseBasicParsing
  } catch {
    Write-Warning "Primary download failed, retrying with Start-BitsTransfer"
    Start-BitsTransfer -Source $final -Destination $OutPath -ErrorAction Stop
  }
}

function Verify-Checksum {
  param([string]$Path, [string]$Sha256)
  if (-not $Sha256 -or $Sha256 -eq 'unset') { return $true }
  $hash = (Get-FileHash -Algorithm SHA256 -Path $Path).Hash.ToLower()
  if ($hash -eq $Sha256.ToLower()) { return $true }
  Write-Warning "Checksum mismatch: expected $Sha256 got $hash"
  return $false
}

function Should-AutoDownload {
  param($tool)
  if ($tool.install_mode -ne 'download') { return $false }
  if (-not $IncludeCommercial) {
    if ($tool.license -eq 'commercial') { return $false }
    if ($tool.license -eq 'non-commercial') { return $false }
  }
  if ($Mode -eq 'minimal') {
    return ($tool.open_source -and ($tool.category -in @('writing','network')))
  } elseif ($Mode -eq 'full-dev') {
    return ($tool.open_source -and ($tool.category -in @('dev','writing','network')))
  } elseif ($Mode -eq 'maker') {
    return ($tool.open_source -and ($tool.category -in @('maker','design')))
  } else {
    return $tool.open_source
  }
}

function Execute-Tool {
  param($tool)
  switch ($tool.install_mode) {
    'download' {
      $fname = Split-Path -Leaf $tool.win_url
      $target = Join-Path $PSScriptRoot ("downloads\" + ($fname ? $fname : ($tool.id + ".bin")))
      if (-not (Test-Path (Split-Path -Parent $target))) { New-Item -ItemType Directory -Path (Split-Path -Parent $target) | Out-Null }
      Download-File -Url $tool.win_url -OutPath $target
      if (-not (Verify-Checksum -Path $target -Sha256 $tool.win_checksum)) {
        Write-Warning "Checksum failed for $($tool.id), keeping file for manual review."
      } else {
        Write-Host "Downloaded OK: $($tool.name)"
      }
    }
    'redirect' {
      Write-Host "Opening official page for $($tool.name)"
      Start-Process $tool.win_url
    }
    'manual' {
      Write-Host "Manual install required for $($tool.name). See notes in tools.yaml."
    }
    default {
      Write-Warning "Unknown install mode: $($tool.install_mode) for $($tool.id)"
    }
  }
}

Write-Host "new-here installer (Mode=$Mode, UseMirror=$UseMirror, IncludeCommercial=$IncludeCommercial)"
$toolsFile = Join-Path $PSScriptRoot 'tools\tools.yaml'
$tools = Read-YamlSimple -Path $toolsFile
if (-not $tools -or $tools.Count -eq 0) { throw "No tools found in $toolsFile" }

$selected = @()
foreach ($t in $tools) {
  if (Should-AutoDownload -tool $t) {
    $selected += $t
  } else {
    if ($t.install_mode -eq 'redirect') {
      Write-Host "Redirect: $($t.name) -> $($t.win_url)"
    } elseif ($t.install_mode -eq 'manual') {
      Write-Host "Manual: $($t.name)"
    }
  }
}

Write-Host "Auto download count: $($selected.Count)"
foreach ($t in $selected) {
  Execute-Tool -tool $t
}

Write-Host "Done."
