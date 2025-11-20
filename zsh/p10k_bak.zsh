# Powerlevel10k Minimal Configuration
# Based on "Lean" style

# Temporarily disable instant prompt to avoid issues during setup
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

(( ! ${+functions[p10k]} )) || p10k reload

typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir                     # current directory
  vcs                     # git status
  newline                 # \n
  prompt_char             # prompt symbol
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status                  # exit code of the last command
  command_execution_time  # duration of the last command
  background_jobs         # presence of background jobs
  # context                 # user@hostname
  time                    # current time
)

# Basic style options
typeset -g POWERLEVEL9K_MODE=nerdfont-complete
typeset -g POWERLEVEL9K_ICON_PADDING=none
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Directory
typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_unique
typeset -g POWERLEVEL9K_SHORTEN_DELIMITER=
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND='#bac2de'  # Subtext1 (Brighter)
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND='#b4befe'     # Lavender (Brighter)

# Git status
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#a6e3a1'      # Green
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#f9e2af'   # Yellow
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#a6e3a1'  # Green
typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND='#bac2de'    # Subtext1

# Prompt char
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND='#a6e3a1' # Green
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND='#f38ba8' # Red
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='❯'

# Transient prompt (cleans up old prompts)
typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=off
