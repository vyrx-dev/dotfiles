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
fish_add_path $HOME/Scripts
fish_add_path $HOME/dev-tools/flutter/bin
fish_add_path $HOME/.pub-cache/bin
fish_add_path $HOME/.spicetify/bin
fish_add_path $HOME/Downloads/Windsurf
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin

# Keybinds
bind \ck sessionizer

# Tools
fzf --fish | source
zoxide init fish | source
starship init fish | source

# Keychain
# if status is-interactive
#     keychain --eval --quiet id_rsa | source
# end

# Aliases
source ~/.config/fish/aliases.fish

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
