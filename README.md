# Dotfiles

Personal macOS development environment setup and configuration files.

## Overview

This repository contains configuration files and setup scripts for quickly setting up a new macOS development environment with preferred tools, applications, and system settings.

## Features

- **Homebrew Bundle**: Automated installation of CLI tools, applications, and fonts
- **Terminal Themes**: Catppuccin color schemes for Ghostty, iTerm2, and Terminal.app
- **Ghostty Terminal**: Custom terminal emulator configuration with Catppuccin Mocha theme
- **VS Code Settings**: Optimized editor and terminal configurations
- **Zsh Configuration**: Enhanced shell with Zinit plugin manager and Powerlevel10k theme
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
- `node` - JavaScript runtime
- `nvim` - Modern vim editor
- `bat` - Modern cat replacement with syntax highlighting
- `fzf` - Fuzzy finder
- `lsd` - Modern ls replacement
- `tree` - Directory tree viewer
- `wget` - File downloader
- `telnet` - Network utility
- `graphviz` - Graph visualization

### Applications
- **Ghostty** - Modern terminal emulator
- **Visual Studio Code** - Code editor
- **iTerm2** - Alternative terminal (optional)

### Terminal Themes
All terminals configured with matching Catppuccin Mocha theme:
- **Ghostty** - Built-in theme configuration
- **iTerm2** - `.itermcolors` files in `iterm/` directory
- **Terminal.app** - `.terminal` files in `color/` directory
- Additional variants: Latte (light), Frappe, Macchiato, Squirrelsong

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
- **iTerm2** - Color schemes ready to import
- **Terminal.app** - Native macOS terminal themes
- **VS Code** - Settings including:
  - Editor font and appearance
  - Terminal font configuration
  - Format on save, bracket colorization
  - File auto-save and trimming
  - Catppuccin Mocha theme
- **Zsh with Zinit** - Modern plugin manager with:
  - **Powerlevel10k** - Fast and customizable prompt
  - **zsh-syntax-highlighting** - Command syntax highlighting
  - **zsh-autosuggestions** - Fish-like autosuggestions
  - **zsh-completions** - Additional completion definitions
  - **fzf-tab** - Fuzzy completion with preview
  - **Oh My Zsh plugins**: git, sudo, command-not-found
  - Smart history (5,000 commands, deduplication)
  - Modern aliases (nvim, bat, ls with colors)
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
- `zsh/` - Zsh shell configuration
  - `zshrc_zinit` - Modern shell setup with Zinit and Powerlevel10k
  - `zshrc_zap` - Alternative setup with Zap plugin manager
  - `zsh_config.sh` - Installation script

## Font Configuration

**Ghostty Terminal:**
- Font: MonoLisa (requires separate installation)
- Font size: 14px
- Font features: Custom ligatures (ss01), slashed zero, calt
- No fallback fonts (Ghostty doesn't support font fallback yet)

**VS Code Editor:**
- Font family: MonoLisa with fallback chain
- Font size: 14px
- Line height: 1.6
- Ligatures enabled

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

**iTerm2 & Terminal.app:**
- Recommended: MonoLisa, 14px
- Set manually after importing color scheme

To install MonoLisa or alternative fonts, purchase/download and install to `~/Library/Fonts/` before running the setup script.

## Terminal Setup

### Quick Install (All Terminals)
The setup script configures all available terminals:
```bash
./setup.sh
```

### Individual Terminal Setup

**Ghostty** (Automatic)
- Configuration applied automatically by `setup.sh`
- Theme: Catppuccin Mocha with blur effects

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
