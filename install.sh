#!/usr/bin/env bash

DOTFILES_PATH="$HOME/dotfiles"
ZSH_PATH="$DOTFILES_PATH/zsh"
PURE_PATH="ZSH_PATH/plugins/pure"

echo "Installing brew"
which brew >> /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing brew bundle"
/opt/homebrew/bin/brew bundle


# Prepare prompt theme
echo "Preparing prompt theme: Pure"
ln -s "$ZSH_PATH/plugins/pure/pure.zsh" "$ZSH_PATH/symlinks/prompt_pure_setup" 2>/dev/null
ln -s "$ZSH_PATH/plugins/pure/async.zsh" "$ZSH_PATH/symlinks/async" 2>/dev/null


# Link .zshrc and append source call
echo "Linking .zshrc"
ln -s "$ZSH_PATH/.zshrc" "$DOTFILES_PATH/.zshrc" 2>/dev/null

LINE="if [ -f '$DOTFILES_PATH/.zshrc' ]; then source '$DOTFILES_PATH/.zshrc'; fi"
FILE="$HOME/.zshrc"

grep -qF -- "$LINE" "$FILE" || echo "\n$LINE" >> "$FILE"


# Installation is done
echo "Done"
