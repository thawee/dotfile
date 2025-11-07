#!/bin/bash

# VS Code settings configuration script

VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
SCRIPT_DIR="$(cd "$(dirname "${(%):-%x}")" 2>/dev/null || cd "$(dirname "$0")" && pwd)"

echo "Setting up VS Code configuration..."

# Create VS Code settings directory if it doesn't exist
mkdir -p "$VSCODE_SETTINGS_DIR"

# Backup existing settings if they exist
if [ -f "$VSCODE_SETTINGS_DIR/settings.json" ]; then
    echo "Backing up existing VS Code settings..."
    cp "$VSCODE_SETTINGS_DIR/settings.json" "$VSCODE_SETTINGS_DIR/settings.json.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Copy settings
echo "Copying VS Code settings..."
cp "$SCRIPT_DIR/settings.json" "$VSCODE_SETTINGS_DIR/settings.json"

echo "✓ VS Code configuration complete!"
