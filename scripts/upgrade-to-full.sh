#!/usr/bin/env bash
set -euo pipefail
echo "Switching to full repository (master)"
git fetch origin master
git checkout master