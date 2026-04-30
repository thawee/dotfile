#!/bin/bash

set -euo pipefail

command_exists() {
	command -v "$1" >/dev/null 2>&1
}

require_command() {
	if ! command_exists "$1"; then
		echo "Missing required command: $1"
		exit 1
	fi
}

run_zsh_script() {
	local script="$1"
	if [[ -f "$script" ]]; then
		zsh "$script"
	else
		echo "Skipping missing script: $script"
	fi
}

install_npm_global_if_missing() {
	local pkg="$1"
	if npm list -g --depth=0 "$pkg" >/dev/null 2>&1; then
		echo "$pkg already installed."
	else
		npm install -g "$pkg"
	fi
}

install_sdk_candidate_if_missing() {
	local candidate="$1"
	local candidate_dir="$HOME/.sdkman/candidates/$candidate"

	if [[ -d "$candidate_dir" ]] && find "$candidate_dir" -mindepth 1 -maxdepth 1 ! -name current -print -quit | grep -q .; then
		echo "$candidate already installed."
	else
		sdk install "$candidate"
	fi
}

require_command brew
require_command zsh
require_command curl

echo "Installing Homebrew dependencies..."
brew bundle install --upgrade --file Brewfile

echo "Applying VS Code Dark Islands bootstrap..."
if ! curl -fsSL https://raw.githubusercontent.com/bwya77/vscode-dark-islands/main/bootstrap.sh | bash; then
	echo "Skipping VS Code Dark Islands bootstrap (download or execution failed)."
fi

run_zsh_script vscode/vscode_config.sh
run_zsh_script iterm/iterm_config.sh
run_zsh_script terminal/terminal_config.sh
run_zsh_script fastfetch/fastfetch_config.sh
run_zsh_script zsh/zsh_config.sh

echo "Installing SDKMAN and JVM tooling..."
if [[ ! -s "$HOME/.sdkman/bin/sdkman-init.sh" ]]; then
	curl -fsSL "https://get.sdkman.io" | bash
fi

# shellcheck disable=SC1090
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
install_sdk_candidate_if_missing java
install_sdk_candidate_if_missing gradle
install_sdk_candidate_if_missing maven

echo "Installing Node.js dependencies..."
require_command npm
npm config set loglevel warn
install_npm_global_if_missing npm-upgrade

if [[ -f package.json ]]; then
	npm install
else
	echo "Skipping npm install (package.json not found)."
fi

echo "Installing Copilot CLI..."
install_npm_global_if_missing @github/copilot

echo "Installing Gemini CLI..."
install_npm_global_if_missing @google/gemini-cli

echo "Setup complete."
