DOTFILES_PATH="$(dirname "$0")"
clear

# Search in history
source "$(brew --prefix zsh-history-substring-search)/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Set prompt theme
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit && promptinit
PURE_CMD_MAX_EXEC_TIME=0
prompt pure

# History Configuration
HISTSIZE=5000           # How many lines of history to keep in memory
HISTFILE=~/.zsh_history # Where to save history to disk
SAVEHIST=5000           # Number of history entries to save to disk
HISTDUP=erase           # Erase duplicates in the history file
setopt appendhistory    # Append history to the history file (no overwriting)
setopt sharehistory     # Share history across terminals
setopt incappendhistory # Immediately append to the history file, not just when a term is killed

# Load ZSH aliases
source "$DOTFILES_PATH/zsh/aliases.sh"

# Load ZSH functions
source "$DOTFILES_PATH/zsh/functions.sh"

# Load ASDF
. "$(brew --prefix asdf)"/asdf.sh

# Set Code as default editor
export EDITOR="code -w"

# Configure Plug to open Code
export PLUG_EDITOR="vscode://file/__FILE__:__LINE__"

# This plugin must be sourced at the end of file
# https://github.com/zsh-users/zsh-syntax-highlighting#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
source "$(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
