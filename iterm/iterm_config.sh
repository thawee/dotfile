#!/bin/bash

# iTerm2 configuration script

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Setting up iTerm2 color schemes..."

# Check if iTerm2 is installed
if [ -d "/Applications/iTerm.app" ]; then
    echo "✓ iTerm2 detected"
else
    echo "⚠️  iTerm2 is not installed. Skipping iTerm configuration."
    exit 0
fi

# iTerm2 will automatically detect .itermcolors files when you double-click them
echo "iTerm2 color schemes are available in: $SCRIPT_DIR"
echo ""
echo "To install:"
echo "1. Double-click any .itermcolors file in the iterm/ directory"
echo "2. Or manually import via iTerm2 → Settings → Profiles → Colors → Color Presets → Import"
echo ""
echo "Available themes:"
ls -1 "$SCRIPT_DIR"/*.itermcolors | xargs -n1 basename
echo ""
echo "✓ iTerm2 color schemes ready!"
echo "  Recommended: catppuccin-mocha.itermcolors (matches VS Code & Ghostty)"
