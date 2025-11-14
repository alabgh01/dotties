if status is-interactive
    # Commands to run in interactive sessions can go here
    # --------------------------------------------------

    # --- Aliases ---
    alias ll='ls -alh'
    alias gs='git status'
    alias gl='git log --oneline --graph --decorate'
    alias cd='z'

    # --- Keybindings ---
    bind \cg 'git status'

    # Activate mise version manager
    ~/.local/bin/mise activate fish | source

    # looks
    set fish_color_comment "#fcba03"

end
set -Ua fish_user_paths ~/.cargo/bin
set -Ua fish_user_paths ~/.local/bin
zoxide init fish | source
starship init fish | source
alias bat=batcat
