# Dotfiles

Personal macOS development environment setup and configuration files.

## Overview

This repository contains configuration files and setup scripts for quickly setting up a new macOS development environment with preferred tools, applications, and system settings.

## Features

- **Homebrew Bundle**: Automated installation of CLI tools, applications, and fonts
- **Ghostty Terminal**: Custom terminal emulator configuration
- **macOS Settings**: Automated Finder and system preferences configuration
- **Development Tools**: Pre-configured setup for Node.js, Java, Gradle, and Maven via SDKMAN

## Prerequisites

- macOS
- [Homebrew](https://brew.sh/) installed
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
- Symbols Only Nerd Font

### VS Code Extensions
- Catppuccin Theme
- Indent Rainbow
- Path Intellisense
- Project Manager
- Rainbow CSV
- Reveal in Ghostty

### Development Tools (via setup.sh)
- **Zap** - Zsh plugin manager
- **SDKMAN** - Java, Gradle, Maven version manager
- **Node.js** - npm packages and configuration

## Configuration Files

- `Brewfile` - Homebrew dependencies and applications
- `setup.sh` - Main setup script
- `osx.sh` - macOS system preferences and Finder settings
- `ghostty/` - Ghostty terminal configuration
- `color/` - Terminal color themes (Catppuccin Mocha)

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
