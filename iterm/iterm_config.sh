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

# Install all iTerm2 Dynamic Profiles from this directory
DYNAMIC_PROFILES_DIR="$HOME/Library/Application Support/iTerm2/DynamicProfiles"
mkdir -p "$DYNAMIC_PROFILES_DIR"

install_dynamic_profile() {
    local src="$1"
    local dest_name="$2"
    if [ -f "$src" ]; then
        echo "  → Installing: $(basename "$src")"
        cp "$src" "$DYNAMIC_PROFILES_DIR/$dest_name"
    fi
}

echo "Installing iTerm2 dynamic profiles..."
install_dynamic_profile "$SCRIPT_DIR/AI Agent.json"          "ai_agent.json"
install_dynamic_profile "$SCRIPT_DIR/FIS Profile.json"       "fis_profile.json"

echo "✓ iTerm2 color schemes ready!"
echo "  Recommended: IslandsDark.itermcolors (matches VS Code)"
