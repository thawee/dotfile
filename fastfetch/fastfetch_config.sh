#!/bin/bash

# Fastfetch configuration script

SCRIPT_DIR="$(cd "$(dirname "${(%):-%x}")" 2>/dev/null || cd "$(dirname "$0")" && pwd)"

echo "Setting up Fastfetch configuration..."

# Create config directory if it doesn't exist
mkdir -p "$HOME/.config/fastfetch"

# Backup existing config if it exists
if [ -f "$HOME/.config/fastfetch/config.jsonc" ]; then
    echo "Backing up existing fastfetch config..."
    cp "$HOME/.config/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Copy config
echo "Copying fastfetch config..."
cp "$SCRIPT_DIR/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"

# Download logo if it doesn't exist
if [ ! -f "$HOME/.config/fastfetch/logo.png" ]; then
    echo "Downloading Fastfetch logo..."
    curl -o "$HOME/.config/fastfetch/logo.png" "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Apple_logo_white.svg/1024px-Apple_logo_white.svg.png"
fi

echo "✓ Fastfetch configuration complete!"
