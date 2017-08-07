#!/usr/bin/env bash

INSTALLER_PATH="$HOME/dotfiles"
ZSH_PATH="$INSTALLER_PATH/zsh"
PURE_PATH="ZSH_PATH/plugins/pure"
VSCODE_PATH="$INSTALLER_PATH/.vscode"


# Prepare prompt theme
echo "Preparing prompt theme: Pure"
ln -s "$ZSH_PATH/plugins/pure/pure.zsh" "$ZSH_PATH/symlinks/prompt_pure_setup"
ln -s "$ZSH_PATH/plugins/pure/async.zsh" "$ZSH_PATH/symlinks/async"


# Link .zshrc
echo "Linking .zshrc"
ln -s "$ZSH_PATH/.zshrc" "$HOME"


# Link .vscode
echo "Linking .vscode"
ln -s "$VSCODE_PATH" "$HOME"
ln -s "$VSCODE_PATH/User" "$HOME/Library/Application Support/Code"

# Installation is done
echo "Done"
