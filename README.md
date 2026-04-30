# Dotfiles

Personal macOS development setup for terminal, shell, editor, and system defaults.

## Overview

This repository bootstraps a fresh macOS machine with:

- Homebrew packages and apps via Brewfile
- Terminal themes for Ghostty, iTerm2, and Terminal.app
- VS Code settings and extensions
- Zsh + Sheldon plugin setup
- Fastfetch startup configuration
- Optional macOS defaults tuning

## Prerequisites

- macOS
- Homebrew: https://brew.sh/
- Internet connection
- Nerd Font installed (MonoLisa Nerd Font recommended)

## Quick Start

```bash
git clone https://github.com/thawee/dotfiles.git
cd dotfiles

# bootstrap tools and dotfiles
./setup.sh

# optional macOS preferences
./osx.sh
```

## What setup.sh does

- Runs `brew bundle` from Brewfile
- Applies VS Code configuration
- Applies VS Code, iTerm2, Terminal.app, Fastfetch, and Zsh configuration
- Installs SDKMAN and then Java, Gradle, Maven
- Installs Node.js global tools such as GitHub Copilot CLI and Gemini CLI

## Project Structure

- `Brewfile`: Homebrew packages, casks, and VS Code extensions
- `setup.sh`: Main bootstrap script
- `osx.sh`: Optional macOS Finder/Terminal/TextEdit defaults
- `fastfetch/`: Fastfetch config and installer script
- `firefox/`: Firefox setup notes
- `ghostty/`: Ghostty config and themes
- `iterm/`: iTerm2 color schemes and installer script
- `terminal/`: Terminal.app profiles and installer script
- `vscode/`: VS Code settings and installer script
- `zsh/`: Zsh, Sheldon plugins, aliases, and prompt config

## Notes

- Install your preferred Nerd Font before running setup for proper prompt/icons.
- Some tools may require manual sign-in or first-launch permissions after install.

## License

MIT
