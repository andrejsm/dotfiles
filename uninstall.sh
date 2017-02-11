read -p "Are you sure? " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Remove theme links
  echo "Cleaning prompt theme: Pure"
  rm -f "$HOME/dotfiles/zsh/plugins/pure/prompt_pure_setup"
  rm -f "$HOME/dotfiles/zsh/plugins/pure/async"

  # Unlink .zshrc
  echo "Unlinking .zshrc"
  rm -f "$HOME/.zshrc"

  # Unlink .vscode
  echo "Unlinking .vscode"
  rm -f "$HOME/.vscode"
  rm -f "$HOME/Library/Application Support/Code/User"
  
  # Done
  echo "Done"
fi
