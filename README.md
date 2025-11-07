# Dotfiles

Personal macOS development environment setup and configuration files.

## Overview

This repository contains configuration files and setup scripts for quickly setting up a new macOS development environment with preferred tools, applications, and system settings.

## Features

- **Homebrew Bundle**: Automated installation of CLI tools, applications, and fonts
- **Ghostty Terminal**: Custom terminal emulator configuration with Catppuccin Mocha theme
- **VS Code Settings**: Optimized editor and terminal configurations
- **Zsh Configuration**: Enhanced shell with plugins, history, and useful aliases
- **macOS Settings**: Automated Finder and system preferences configuration
- **Development Tools**: Pre-configured setup for Node.js, Java, Gradle, and Maven via SDKMAN

## Prerequisites

- macOS
- [Homebrew](https://brew.sh/) installed
- **MonoLisa Font** (recommended) - Install before running setup for best terminal experience
  - Alternative fonts: JetBrains Mono, Fira Code, Menlo, Monaco
- Internet connection

## Installation

1. Clone this repository:
```bash
git clone https://github.com/thawee/dotfile.git
cd dotfile
```

2. Run the setup script:
```bash
./setup.sh
```

3. Apply macOS settings (optional):
```bash
./osx.sh
```

## What's Included

### CLI Tools (Brewfile)
- `git` - Version control
- `starship` - Cross-shell prompt
- `node` - JavaScript runtime
- `lsd` - Modern ls replacement
- `tree` - Directory tree viewer
- `wget` - File downloader
- `telnet` - Network utility
- `graphviz` - Graph visualization

### Applications
- **Ghostty** - Modern terminal emulator
- **Visual Studio Code** - Code editor

### Fonts
- **MonoLisa** - Primary monospace font (commercial, install separately)
- Symbols Only Nerd Font - Icon support

### VS Code Extensions
- Catppuccin Theme
- Indent Rainbow
- Path Intellisense
- Project Manager
- Rainbow CSV
- Reveal in Ghostty

### Development Tools (via setup.sh)
- **Ghostty** - Terminal configuration with Catppuccin Mocha theme
- **VS Code** - Settings including terminal font and appearance
- **Zsh** - Enhanced shell with:
  - Zap plugin manager
  - Syntax highlighting
  - Auto-suggestions
  - Starship prompt
  - Git aliases (gs, gp, gc, gco)
  - Directory shortcuts (ll, .., ...)
  - Smart history (10,000 commands, deduplication)
- **SDKMAN** - Java, Gradle, Maven version manager
- **Node.js** - npm packages and configuration

## Configuration Files

- `Brewfile` - Homebrew dependencies and applications
- `setup.sh` - Main setup script
- `osx.sh` - macOS system preferences and Finder settings
- `ghostty/` - Ghostty terminal configuration and themes
  - `config` - Main Ghostty settings (font, theme, window settings)
  - `ghostty_config.sh` - Installation script
  - `themes/` - Catppuccin color themes
- `vscode/` - VS Code configuration
  - `settings.json` - Editor and terminal settings
  - `vscode_config.sh` - Installation script
- `zsh/` - Zsh shell configuration
  - `.zshrc` - Shell settings with plugins, history, and aliases
  - `zsh_config.sh` - Installation script
- `color/` - Terminal color themes (Catppuccin variants, Squirrelsong)

## Font Configuration

**Ghostty Terminal:**
- Font: MonoLisa (requires separate installation)
- Font size: 14px
- Font features: Custom ligatures (ss01), slashed zero, calt
- No fallback fonts (Ghostty doesn't support font fallback yet)

**VS Code Terminal:**
- Font family: MonoLisa with fallback chain:
  - MonoLisa (primary)
  - JetBrains Mono
  - Fira Code Retina
  - Menlo
  - Monaco
  - Courier New
  - monospace (system default)
- Font size: 14px
- Line height: 1.2
- Smooth scrolling enabled

To install MonoLisa or alternative fonts, purchase/download and install to `~/Library/Fonts/` before running the setup script.

## macOS Customizations (osx.sh)

The `osx.sh` script configures:
- Finder settings (show hidden files, file extensions, path bar)
- Disable animations and warnings
- Search defaults to current folder
- Grid view settings
- Terminal theme (Catppuccin Mocha)
- TextEdit defaults (plain text, UTF-8)

## License

MIT
