#!/bin/bash

# Install dependencies
echo "Installing Homebrew dependencies…"
brew bundle install --upgrade --file Brewfile

zsh vscode/vscode_config.sh
#zsh starship/starship_config.sh
zsh iterm/iterm_config.sh
zsh color/terminal_config.sh
zsh fastfetch/fastfetch_config.sh

#curl -fsSL https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh | zsh
zsh terminal/terminal_config.sh
zsh zsh/zsh_config.sh

# SDK, Java, Gradle, Maven
echo "Installing sdkman dependencies…"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk install java
sdk install gradle
sdk install maven

# Node.js
echo "Installing Node.js dependencies…"
npm config set loglevel warn
npm install -g npm-upgrade
npm install
echo

echo "Installing copilot cli…"
npm install -g @github/copilot

echo "Installing gemini cli…"
npm install -g @google/gemini-cli
