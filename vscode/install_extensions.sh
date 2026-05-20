#!/usr/bin/env bash

# Script to install Visual Studio Code extensions using the VS Code CLI.
# Requires that the `code` command is available in your PATH.
# Run with:
#   ./vscode/install_vscode_extensions.sh

# Exit on any command failure
set -e

# Function to install an extension safely
install_extension() {
  local ext="$1"
  echo "Installing $ext..."
  code --install-extension "$ext" --force
}

# List of extensions from your Brewfile
# Primary extensions
install_extension "kangsou.islands-theme"
install_extension "l-igh-t.vscode-theme-seti-folder"
install_extension "subframe7536.custom-ui-style"

# Development and productivity extensions
install_extension "oderwat.indent-rainbow"
install_extension "alefragnani.project-manager"
install_extension "mechatroner.rainbow-csv"
install_extension "mk12.better-git-line-blame"
install_extension "ms-vscode.hexeditor"
install_extension "ritwickdey.liveserver"

# Optional extensions (uncomment to enable)
# install_extension "sapegin.theme-squirrelsonglight"
# install_extension "catppuccin.catppuccin-vsc"
# install_extension "syahrizaldev.material-solarized"
# install_extension "azemoh.one-monokai"
# install_extension "zeithaste.cursorcharcode"
# install_extension "bierner.markdown-mermaid"
# install_extension "gruntfuggly.todo-tree"

# Finished

echo "All extensions installed successfully."
