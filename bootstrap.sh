#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

echo "==> Using dotfiles in: $DOTFILES"

echo "==> Checking for GNU Stow..."
if ! command -v stow >/dev/null 2>&1; then
  echo "Error: stow is not installed."
  exit 1
fi

cd "$DOTFILES"

echo "==> Stowing packages..."
for pkg in fish starship git kitty tmux; do
  if [ -d "$DOTFILES/$pkg" ]; then
    echo "  - stow $pkg"
    stow "$pkg" || true
  fi
done

###################################
# OS-SPECIFIC SETUP
###################################
case "$(uname -s)" in
    Linux)
        if grep -qi microsoft /proc/version 2>/dev/null; then
            echo "==> Running WSL setup..."
            "$DOTFILES/os/wsl.sh"
        else
            echo "==> Running Linux setup..."
            "$DOTFILES/os/linux.sh"
        fi
        ;;
    Darwin)
        echo "==> Running macOS setup..."
        "$DOTFILES/os/macos.sh"
        ;;
esac

echo "==> Done. Open a new terminal or run 'exec fish' to reload your shell."
