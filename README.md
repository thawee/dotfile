# Dotfiles

Personal macOS development environment setup and configuration files.

## Overview

This repository contains configuration files and setup scripts for quickly setting up a new macOS development environment with preferred tools, applications, and system settings.

## Features

- **Homebrew Bundle**: Automated installation of CLI tools, applications, and fonts
- **Terminal Themes**: Catppuccin color schemes for iTerm2 and Terminal.app
- **VS Code Settings**: Optimized editor and terminal configurations
- **Zsh Configuration**: Enhanced shell with Zap plugin manager and Powerlevel10k prompt
- **Fastfetch**: Minimal system information display on startup
- **macOS Settings**: Automated Finder and system preferences configuration
- **Development Tools**: Pre-configured setup for Node.js, Java, Gradle, and Maven via SDKMAN

## Prerequisites

- macOS
- [Homebrew](https://brew.sh/) installed
- **MonoLisa Nerd Font** (recommended) - Install before running setup for best terminal experience.
  - This font includes the necessary icons for Powerlevel10k.
  - Alternative fonts: JetBrains Mono Nerd Font, FiraCode Nerd Font.
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
- `node` - JavaScript runtime
- `fastfetch` - System information tool
- `nvim` - Modern vim editor
- `bat` - Modern cat replacement with syntax highlighting
- `fzf` - Fuzzy finder
- `lsd` - Modern ls replacement
- `tree` - Directory tree viewer
- `wget` - File downloader
- `telnet` - Network utility
- `graphviz` - Graph visualization

### Applications
- **Visual Studio Code** - Code editor
- **iTerm2** - Alternative terminal (optional)

### Terminal Themes
All terminals configured with matching Catppuccin Mocha theme:
- **iTerm2** - `.itermcolors` files in `iterm/` directory
- **Terminal.app** - `.terminal` files in `color/` directory
- Additional variants: Latte (light), Frappe, Macchiato, Squirrelsong

### Fonts
- **MonoLisa Nerd Font** - Primary monospace font (commercial, install separately)
- Symbols Only Nerd Font - Icon support

### VS Code Extensions
- Catppuccin Theme
- Indent Rainbow
- Path Intellisense
- Project Manager
- Rainbow CSV

### Development Tools (via setup.sh)
- **iTerm2** - Color schemes ready to import
- **Terminal.app** - Native macOS terminal themes
- **VS Code** - Settings including:
  - Editor font and appearance
  - Terminal font configuration
  - Format on save, bracket colorization
  - File auto-save and trimming
  - Catppuccin Mocha theme
- **Zsh with Zap** - Lightweight plugin manager with:
  - **Pure** - Minimal and fast prompt
  - **zsh-syntax-highlighting** - Command syntax highlighting
  - **zsh-autosuggestions** - Fish-like autosuggestions
  - **zsh-completions** - Additional completion definitions
  - **zsh-async** - Async library for Zsh
  - **Fastfetch** - System info on startup (customized minimal config)
  - Smart history (10,000 commands, deduplication)
  - Modern aliases (nvim, bat, ls with colors)
- **SDKMAN** - Java, Gradle, Maven version manager
- **Node.js** - npm packages and configuration

## Configuration Files

- `Brewfile` - Homebrew dependencies and applications
- `setup.sh` - Main setup script
- `osx.sh` - macOS system preferences and Finder settings
- `iterm/` - iTerm2 configuration
  - `*.itermcolors` - Catppuccin color schemes (Mocha, Latte, Frappe, Macchiato)
  - `iterm_config.sh` - Installation script
  - `README.md` - Setup instructions
- `color/` - Terminal.app themes
  - `*.terminal` - Catppuccin and Squirrelsong themes
  - `terminal_config.sh` - Installation script
- `vscode/` - VS Code configuration
  - `settings.json` - Editor and terminal settings
  - `vscode_config.sh` - Installation script
- `fastfetch/` - Fastfetch configuration
  - `config.jsonc` - Minimal system info config
  - `fastfetch_config.sh` - Installation script
- `zsh/` - Zsh shell configuration
  - `zshrc_zap` - Modern shell setup with Zap and Pure prompt
  - `aliases.zsh` - Shared aliases
  - `zsh_config.sh` - Installation script

## Font Configuration

**VS Code Editor:**
- Font family: MonoLisa Nerd Font with fallback chain
- Font size: 14px
- Line height: 1.6
- Ligatures enabled

**VS Code Terminal:**
- Font family: MonoLisa Nerd Font with fallback chain:
  - MonoLisa Nerd Font (primary)
  - MonoLisa
  - Symbols Nerd Font Mono
  - JetBrains Mono
  - Fira Code Retina
  - monospace (system default)
- Font size: 14px
- Line height: 1.2
- Smooth scrolling enabled

**iTerm2 & Terminal.app:**
- Recommended: **MonoLisa Nerd Font**, 14px
- Set manually after importing color scheme

To install MonoLisa Nerd Font or alternative fonts, purchase/download and install to `~/Library/Fonts/` before running the setup script.

## Terminal Setup

### Quick Install (All Terminals)
The setup script configures all available terminals:
```bash
./setup.sh
```

### Individual Terminal Setup

**iTerm2** (Manual Import)
```bash
# Double-click to import
open iterm/catppuccin-mocha.itermcolors

# Or via iTerm2 Settings
# Settings → Profiles → Colors → Color Presets → Import
```

**Terminal.app** (Manual Import)
```bash
# Double-click to import
open color/catppuccin-mocha.terminal

# Set as default
# Terminal → Settings → Profiles → Select profile → Default button
```

**VS Code** (Automatic)
- Integrated terminal configured automatically
- Matches system terminal themes

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
