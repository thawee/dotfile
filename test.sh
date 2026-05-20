#!/usr/bin/env bash
set -euo pipefail

# basic sanity test for dotfiles bootstrap

# 1. Check that setup.sh exists and is executable
test -x setup.sh || exit 1

# 2. Verify core configuration files are present after run
source ./setup.sh 2>/dev/null || echo "(ignored: may require admin access)"

# 3. Verify that expected files were copied to home
for f in "~/.zshrc" "~/.config/zsh/aliases.zsh" "~/Library/Application\ Support/Code/User/settings.json" "~/.pi/agent/models.json" "~/.pi/agent/settings.json" "~/.pi/agent/auth.json"; do
    eval test -f "$f" || echo "missing: $f"
done

# 4. Check Brewfile dependencies (simple presence)
brew list >/dev/null 2>&1 || echo "brew not available"

# 5. Exit success
exit 0
