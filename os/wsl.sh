#!/usr/bin/env bash
set -e

echo "[WSL] Installing basic tools..."

sudo apt update
sudo apt install -y \
  fish \
  stow \
  fzf \
  git \
  neovim \
  ripgrep \
  build-essential

echo "[WSL] Setting fish as your default shell..."
chsh -s /usr/bin/fish

echo "[WSL] Done."

