#!/usr/bin/env bash
# Download and unzip the workshop data into the persistent workspace folder.
set -euo pipefail

DATA_DIR="${DATA_DIR:-$(cd "$(dirname "$0")/.." && pwd)/data}"
ZIP="$DATA_DIR/ngsintro.zip"
URL='https://files.osf.io/v1/resources/e2v3w/providers/osfstorage/6ac7d1b6b903d6dbc8b3efdf'

if [ -f "$DATA_DIR/.extracted" ]; then
  echo "Workshop data already present in $DATA_DIR"
  exit 0
fi

mkdir -p "$DATA_DIR"
trap 'rm -f "$ZIP.part"' EXIT

wget -O "$ZIP.part" "$URL"
mv "$ZIP.part" "$ZIP"
unzip -q -o "$ZIP" -d "$DATA_DIR"

if [ -d "$DATA_DIR/ngsintro" ]; then
  rm -f "$ZIP"
else
  echo "Error: expected folder $DATA_DIR/ngsintro not found after unzipping" >&2
  exit 1
fi

touch "$DATA_DIR/.extracted"
echo "Workshop data extracted to $DATA_DIR"
