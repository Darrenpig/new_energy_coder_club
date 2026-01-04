$ErrorActionPreference = "Stop"
Write-Host "Switching to full repository (master)"
git fetch origin master
git checkout master