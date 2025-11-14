#!/usr/bin/env bash
set -e

echo "[macOS] Installing Homebrew tools..."

# Install Homebrew if not installed
if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

brew install \
  fish \
  stow \
  fzf \
  git \
  neovim \
  ripgrep \
  wget

echo "[macOS] Adding fish to /etc/shells..."
if ! grep -q "/opt/homebrew/bin/fish" /etc/shells; then
    echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells >/dev/null
fi

echo "[macOS] Setting fish as default shell..."
chsh -s /opt/homebrew/bin/fish

echo "[macOS] Done."

