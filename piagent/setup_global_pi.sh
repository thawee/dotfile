#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${PI_AGENT_DIR:-$HOME/.pi/agent}"

install_with_backup() {
	local filename="$1"
	local source_file="$SCRIPT_DIR/$filename"
	local target_file="$TARGET_DIR/$filename"

	if [[ -f "$target_file" ]]; then
		local backup_file="$target_file.bak.$(date +%Y%m%d%H%M%S)"
		cp "$target_file" "$backup_file"
		echo "Backed up $target_file -> $backup_file"
	fi

	cp "$source_file" "$target_file"
	echo "Installed $target_file"
}

mkdir -p "$TARGET_DIR"

install_with_backup "models.json"
install_with_backup "settings.json"

if [[ -f "$TARGET_DIR/auth.json" ]]; then
	echo "Keeping existing $TARGET_DIR/auth.json"
else
	cp "$SCRIPT_DIR/auth.json" "$TARGET_DIR/auth.json"
	echo "Installed $TARGET_DIR/auth.json"
fi

chmod 600 "$TARGET_DIR/auth.json"

echo "Pi global config installed in $TARGET_DIR"
