#!/bin/zsh

set -euo pipefail

DEST_DIR="$HOME/.config/fastfetch"
SCRIPT_DIR="${0:A:h}"
SRC_FILE="$SCRIPT_DIR/config.json"

echo "Setting up fastfetch config..."

if [[ ! -d "$DEST_DIR" ]]; then
	mkdir -p "$DEST_DIR"
fi

cp "$SRC_FILE" "$DEST_DIR/config.json"
echo "Copied fastfetch config to $DEST_DIR/config.json"
