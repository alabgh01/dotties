
#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"

echo "Copying existing configs into dotfiles..."

# Git config
if [ -f ~/.gitconfig ]; then
  cp ~/.gitconfig "$DOTFILES/git/.gitconfig"
fi

# Global gitignore
if [ -f ~/.gitignore_global ]; then
  cp ~/.gitignore_global "$DOTFILES/git/.gitignore_global"
fi

# Fish
mkdir -p "$DOTFILES/fish"
if [ -f ~/.config/fish/config.fish ]; then
  cp ~/.config/fish/config.fish "$DOTFILES/fish/config.fish"
fi
if [ -d ~/.config/fish/functions ]; then
  mkdir -p "$DOTFILES/fish/functions"
  cp ~/.config/fish/functions/*.fish "$DOTFILES/fish/functions/"
fi

# Starship
mkdir -p "$DOTFILES/starship"
if [ -f ~/.config/starship.toml ]; then
  cp ~/.config/starship.toml "$DOTFILES/starship/starship.toml"
fi

# Kitty
mkdir -p "$DOTFILES/kitty"
if [ -f ~/.config/kitty/kitty.conf ]; then
  cp ~/.config/kitty/kitty.conf "$DOTFILES/kitty/kitty.conf"
fi

# Tmux
mkdir -p "$DOTFILES/tmux"
if [ -f ~/.tmux.conf ]; then
  cp ~/.tmux.conf "$DOTFILES/tmux/tmux.conf"
fi

echo "Done copying configs into dotfiles folder."
