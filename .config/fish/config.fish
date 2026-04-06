set -g fish_greeting
fish_default_key_bindings

# Environment
set -gx EDITOR nvim
set -gx SUDO_EDITOR $EDITOR
set -gx VISUAL nvim
set -gx TERMINAL kitty
set -gx MANPAGER "nvim +Man!"
set -gx MPD_HOST "/run/user/"(id -u)"/mpd/socket"

# PATH
fish_add_path ~/.local/bin
# fish_add_path ~/Scripts
fish_add_path ~/dev-tools/flutter/bin
fish_add_path ~/.pub-cache/bin
fish_add_path ~/.spicetify/bin

# Keybinds
bind \ck sessionizer

# Tools
fzf --fish | source
zoxide init fish | source
starship init fish | source

# Keychain
if status is-interactive
    keychain --eval --quiet id_rsa | source
end

# Aliases
source ~/.config/fish/aliases.fish
