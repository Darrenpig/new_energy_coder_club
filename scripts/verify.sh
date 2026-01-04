#!/usr/bin/env bash
set -euo pipefail

TOOLS_FILE="${TOOLS_FILE:-tools/checksums.yaml}"
CACHE_DIR="${CACHE_DIR:-$HOME/.cache/new-here}"

if ! command -v yq >/dev/null 2>&1; then
  echo "yq not found."; exit 1
fi

files_json="$(yq e -o=json "$TOOLS_FILE")"
echo "$files_json" | jq -c '.files[]' | while read -r f; do
  id="$(echo "$f" | jq -r '.id')"
  fname="$(echo "$f" | jq -r '.filename')"
  sha="$(echo "$f" | jq -r '.sha256')"
  [ "$sha" = "unset" ] && continue
  path="$CACHE_DIR/downloads/${id}__${fname}"
  if [ ! -f "$path" ]; then
    echo "Missing: $path"; continue
  fi
  calc="$(sha256sum "$path" | awk '{print tolower($1)}')"
  if [ "$calc" = "$(echo "$sha" | tr 'A-Z' 'a-z')" ]; then
    echo "OK: $path"
  else
    echo "FAIL: $path expected=$sha got=$calc"
  fi
done
