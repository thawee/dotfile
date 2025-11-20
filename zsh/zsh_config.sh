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
#cp "$SCRIPT_DIR/zshrc_zinit" "$HOME/.zshrc"
#cp "$SCRIPT_DIR/zshrc_zap" "$HOME/.zshrc"
cp "$SCRIPT_DIR/zshenv" "$HOME/.zshenv"
cp "$SCRIPT_DIR/zprofile" "$HOME/.zprofile"
cp "$SCRIPT_DIR/zshrc_sheldon" "$HOME/.zshrc"
mkdir -p "$HOME/.config/sheldon"
cp "$SCRIPT_DIR/sheldon_plugins.toml" "$HOME/.config/sheldon/plugins.toml"

# Copy aliases
echo "Copying aliases..."
mkdir -p "$HOME/.config/zsh"
cp "$SCRIPT_DIR/aliases.zsh" "$HOME/.config/zsh/aliases.zsh"

# Copy p10k config
echo "Copying p10k config..."
cp "$SCRIPT_DIR/p10k.zsh" "$HOME/.config/zsh/p10k.zsh"

echo "✓ Zsh configuration complete!"
