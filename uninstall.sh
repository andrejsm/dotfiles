DOTFILES_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Unlink .zshrc
echo "Unlinking .zshrc"
rm "$DOTFILES_PATH/.zshrc"
