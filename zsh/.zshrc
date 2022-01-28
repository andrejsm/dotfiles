DOTFILES_PATH="$HOME/dotfiles"

# Add function path
fpath=( "$DOTFILES_PATH/zsh/symlinks" $fpath )

# Add more colors
source "$DOTFILES_PATH/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"


# Search in history
source "$DOTFILES_PATH/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# Set prompt theme
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
. $(brew --prefix asdf)/asdf.sh

# Set Code as default editor
export EDITOR="code -w"

# Configure Plug to open Code
export PLUG_EDITOR="vscode://file/__FILE__:__LINE__"
