#!/bin/bash

# Starship configuration script

SCRIPT_DIR="$(cd "$(dirname "${(%):-%x}")" 2>/dev/null || cd "$(dirname "$0")" && pwd)"

echo "Setting up Starship configuration..."

# Create config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Backup existing starship.toml if it exists
if [ -f "$HOME/.config/starship.toml" ]; then
    echo "Backing up existing starship.toml..."
    cp "$HOME/.config/starship.toml" "$HOME/.config/starship.toml.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Copy starship.toml
echo "Copying starship.toml..."
cp "$SCRIPT_DIR/starship.toml" "$HOME/.config/starship.toml"

echo "✓ Starship configuration complete!"
