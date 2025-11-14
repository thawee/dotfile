#!/bin/bash

# Zsh configuration script

SCRIPT_DIR="$(cd "$(dirname "${(%):-%x}")" 2>/dev/null || cd "$(dirname "$0")" && pwd)"

echo "Setting up Zsh configuration..."

# Backup existing .zshrc if it exists
if [ -f "$HOME/.zshrc" ]; then
    echo "Backing up existing .zshrc..."
    cp "$HOME/.zshrc" "$HOME/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Copy .zshrc
echo "Copying .zshrc..."
cp "$SCRIPT_DIR/zshrc_zinit" "$HOME/.zshrc"

echo "✓ Zsh configuration complete!"
