# Common Aliases
# These aliases are shared between zinit and zap configurations

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lah'
alias c='clear'

# Tools replacements (if installed)
if command -v lsd >/dev/null 2>&1; then
    alias ls='lsd'
    alias l='ls -l'
    alias la='ls -a'
    alias lla='ls -la'
    alias lt='ls --tree'
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
    alias cat='bat'
fi

# Git (Common ones, Zap's supercharge adds many more)
alias gs='git status'
alias gp='git pull'
alias gc='git commit'
alias gco='git checkout'
alias gl='git log --oneline --graph --decorate'
