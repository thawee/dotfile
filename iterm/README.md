# iTerm2 Setup

iTerm2 Catppuccin color schemes for consistent theming across terminals.

## Installation

### Automatic (via setup.sh)
```bash
./setup.sh
```

### Manual Installation

1. **Double-click method** (easiest):
   - Navigate to `iterm/` directory
   - Double-click `catppuccin-mocha.itermcolors`
   - iTerm2 will automatically import the theme

2. **Manual import**:
   - Open iTerm2
   - Go to Settings (⌘+,)
   - Profiles → Colors → Color Presets → Import
   - Select the desired `.itermcolors` file
   - Choose the imported preset from the dropdown

## Available Themes

- `catppuccin-mocha.itermcolors` - **Recommended** (matches VS Code & Ghostty)
- `catppuccin-latte.itermcolors` - Light theme
- `catppuccin-frappe.itermcolors` - Dark with purple tones
- `catppuccin-macchiato.itermcolors` - Dark with warmer tones

## Font Configuration

After importing the color scheme, set the font:

1. Settings → Profiles → Text
2. Font: MonoLisa (or your preferred monospace font)
3. Size: 14

## Recommended Settings

- **General**: Disable "Native full screen windows" for better window management
- **Profiles → Window**: Set transparency and blur if desired
- **Profiles → Terminal**: Enable "Unlimited scrollback"
- **Profiles → Keys**: Set key mappings for ⌥← and ⌥→ to jump words
