#!/usr/bin/env bash
set -euo pipefail

TOOLS_FILE="${TOOLS_FILE:-tools/tools.yaml}"
BIN_DIR="${BIN_DIR:-$HOME/.local/new-here/bin}"
APP_DIR="${APP_DIR:-$HOME/.local/new-here/apps}"
CACHE_DIR="${CACHE_DIR:-$HOME/.cache/new-here}"
IDS="${IDS:-}"
CATEGORY="${CATEGORY:-}"
PLAN_ONLY="${PLAN_ONLY:-false}"
NON_INTERACTIVE="${NON_INTERACTIVE:-false}"

mkdir -p "$BIN_DIR" "$APP_DIR" "$CACHE_DIR" "$CACHE_DIR/downloads"

if ! command -v yq >/dev/null 2>&1; then
  echo "yq not found. Please install yq (https://github.com/mikefarah/yq)" >&2
  exit 1
fi

OS="linux"
ARCH="$(uname -m)"
case "$ARCH" in
  aarch64) ARCH="arm64" ;;
  x86_64) ARCH="x64" ;;
esac
echo "Detected OS=$OS ARCH=$ARCH"

jq_tools() {
  yq e -o=json "$TOOLS_FILE"
}

select_tools() {
  local jq
  jq="$(jq_tools)"
  echo "$jq" | jq -c '
    .tools
    | map(select(.supports|not) + select((.supports//[])|index("'"$OS"'")))
    | map(select("'"$CATEGORY"'"=="" or .category=="'"$CATEGORY"'"))
    | (if "'"$IDS"'"=="" then . else map(select((("'"$IDS"'")|split(",")[]) as $id | .id==$id)) end)
  '
}

download() {
  local url="$1" out="$2"
  echo "Downloading: $url"
  curl -L --fail -o "$out" "$url"
}

expand_zip() {
  local archive="$1" dest="$2"
  mkdir -p "$dest"
  unzip -o "$archive" -d "$dest" >/dev/null
}

tools_json="$(select_tools)"
count="$(echo "$tools_json" | jq 'length')"
if [ "$count" -eq 0 ]; then
  echo "No tools selected"; exit 0
fi

echo "Install plan:"
echo "$tools_json" | jq -r '.[] | "- \(.id) [\(.name)] mode=\(.install.mode // "redirect")"'
if [ "$PLAN_ONLY" = "true" ]; then
  echo "PlanOnly set. Exiting."; exit 0
fi

echo "$tools_json" | jq -c '.[]' | while read -r t; do
  id="$(echo "$t" | jq -r '.id')"
  name="$(echo "$t" | jq -r '.name')"
  mode="$(echo "$t" | jq -r '.install.mode // "redirect"')"
  echo "=== Installing: $name ($id) mode=$mode ==="
  if [ "$mode" = "redirect" ]; then
    url="$(echo "$t" | jq -r '.install.official.url // .install.product.url // .install.download.url // .install.linux.url')"
    [ "$url" = "null" ] && { echo "No redirect URL for $id"; continue; }
    echo "Open: $url"
    continue
  fi
  if [ "$mode" = "manual" ]; then
    note="$(echo "$t" | jq -r '.install.note // "(no note provided)"')"
    echo "$note"
    continue
  fi
  if [ "$mode" != "download" ]; then
    echo "Unknown install.mode: $mode"; continue
  fi
  dl=""; dlName=""
  src="$(echo "$t" | jq -r '.fetch.source // ""')"
  if [ "$src" = "direct" ]; then
    dl="$(echo "$t" | jq -r '.fetch.url')"
    dlName="$(basename "$dl")"
  else
    dl="$(echo "$t" | jq -r '.install.linux.url // .install.windows.url')"
    dlName="$(basename "$dl")"
  fi
  [ -z "$dl" ] || [ "$dl" = "null" ] && { echo "No download URL for $id"; continue; }
  out="$CACHE_DIR/downloads/${id}__${dlName}"
  download "$dl" "$out"
  ext="${out##*.}"
  if [ "$ext" = "zip" ]; then
    dest="$APP_DIR/$id"
    expand_zip "$out" "$dest"
    echo "Extracted to: $dest"
  else
    echo "Downloaded file: $out"
  fi
done
