#!/usr/bin/env bash

INSTALLER_PATH="$HOME/dotfiles"
ZSH_PATH="$INSTALLER_PATH/zsh"
PURE_PATH="ZSH_PATH/plugins/pure"

echo "Installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing asdf"
brew install asdf


# Prepare prompt theme
echo "Preparing prompt theme: Pure"
ln -s "$ZSH_PATH/plugins/pure/pure.zsh" "$ZSH_PATH/symlinks/prompt_pure_setup"
ln -s "$ZSH_PATH/plugins/pure/async.zsh" "$ZSH_PATH/symlinks/async"


echo "Linking .zshrc"
echo -e "$ZSH_PATH/.zshrc\n\n$(<~/.zshrc)" > ~/.zshrc


# Installation is done
echo "Done"
