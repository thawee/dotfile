#!/bin/bash

# Terminal.app configuration script

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Setting up Terminal.app color schemes..."

# Terminal.app themes (.terminal files) can be imported by double-clicking or opening them
echo "Terminal.app color schemes are available in: $SCRIPT_DIR"
echo ""
echo "To install:"
echo "1. Double-click any .terminal file in the color/ directory"
echo "2. Or open with Terminal.app: open <filename>.terminal"
echo "3. Set as default: Terminal → Settings → Profiles → Select profile → Default button"
echo ""
echo "Available themes:"
ls -1 "$SCRIPT_DIR"/*.terminal 2>/dev/null | xargs -n1 basename || echo "No themes found"
echo ""
echo "✓ Terminal.app color schemes ready!"
echo "  Recommended: catppuccin-mocha.terminal (matches VS Code & Ghostty)"
echo ""
echo "Font settings:"
echo "  1. Terminal → Settings → Profiles → Font"
echo "  2. Select: MonoLisa, Size: 14"
