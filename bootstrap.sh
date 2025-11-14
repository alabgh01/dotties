#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"

echo "Creating symlinks..."

# Git configs
ln -sf "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
[ -f "$DOTFILES/git/.gitignore_global" ] && ln -sf "$DOTFILES/git/.gitignore_global" "$HOME/.gitignore_global"

# Fish
mkdir -p "$HOME/.config/fish"
ln -sf "$DOTFILES/fish/config.fish" "$HOME/.config/fish/config.fish"
if [ -d "$DOTFILES/fish/functions" ]; then
  mkdir -p "$HOME/.config/fish/functions"
  for f in "$DOTFILES"/fish/functions/*.fish; do
    ln -sf "$f" "$HOME/.config/fish/functions/"
  done
fi

# Starship
[ -f "$DOTFILES/starship/starship.toml" ] && ln -sf "$DOTFILES/starship/starship.toml" "$HOME/.config/starship.toml"

# Kitty
mkdir -p "$HOME/.config/kitty"
[ -f "$DOTFILES/kitty/kitty.conf" ] && ln -sf "$DOTFILES/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

# Tmux
[ -f "$DOTFILES/tmux/tmux.conf" ] && ln -sf "$DOTFILES/tmux/tmux.conf" "$HOME/.tmux.conf"

echo "Done!"

