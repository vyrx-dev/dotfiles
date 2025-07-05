
# !/bin/bash

echo "Setting up symlinks for dotfiles..."

# Zsh config
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Hyprland config
mkdir -p ~/.config/hypr
ln -sf ~/dotfiles/config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -sf ~/dotfiles/config/hypr/keybindings.conf ~/.config/hypr/keybindings.conf

# Neovim config
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua

# Scripts
mkdir -p ~/.local/bin
ln -sf ~/dotfiles/bin/gcal_notify.sh ~/.local/bin/gcal_notify.sh

echo "✅ Symlinks created!"



