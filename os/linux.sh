#!/usr/bin/env bash
set -e

echo "[Linux] Installing developer tools..."

sudo apt update
sudo apt install -y \
  fish \
  stow \
  fzf \
  git \
  neovim \
  ripgrep \
  build-essential \
  curl

echo "[Linux] Setting fish as default shell..."
chsh -s /usr/bin/fish

echo "[Linux] Done."
