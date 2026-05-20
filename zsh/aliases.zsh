# Common Aliases
# These aliases are shared between zinit and zap configurations

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lah'
alias c='clear'

# Tools replacements (if installed)
if command -v eza >/dev/null 2>&1; then
    alias ls='eza --icons'
    alias l='eza -1lh --icons --git-ignore --group-directories-first'
    alias la='eza -1lah --icons --group-directories-first'
    alias lla='eza -lah --icons --group-directories-first'
    alias lt='eza --tree --icons'
else
    if [[ "$OSTYPE" == "darwin"* ]]; then
        alias ls='ls -G'
    else
        alias ls='ls --color'
    fi
fi

if command -v nvim >/dev/null 2>&1; then
    alias vim='nvim'
    alias vi='nvim'
fi

if command -v bat >/dev/null 2>&1; then
    alias cat='bat -p'
    alias c='bat'
fi

# Git (Common ones, Zap's supercharge adds many more)
alias gs='git status'
alias gp='git pull'
alias gc='git commit'
alias gco='git checkout'
alias gl='git log --oneline --graph --decorate'

# AI Agents
# GitHub Copilot CLI (installed via cask "copilot-cli")
if command -v copilot >/dev/null 2>&1; then
    alias cpl='copilot'
fi

# AntiGravity CLI
if command -v agy >/dev/null 2>&1; then
    alias agq='agy'   # quick alias used in user rules
fi
