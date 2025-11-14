# Ghazal's Dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Layout

- `fish/.config/fish/` → `~/.config/fish/`
- `starship/.config/starship.toml` → `~/.config/starship.toml`
- `git/.gitconfig` → `~/.gitconfig`

## Install

Clone into `~/dotfiles`:

```bash
git clone git@github.com:alabgh01/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

Then stow the packages you want:

```bash
stow fish
stow starship
stow git
```

You can undo any package with:

```bash
stow -D fish
```
