# Dotfiles (Arch + Hyprland)

This repository contains my configuration files for an Arch Linux system running Hyprland and zsh. It’s a collection of settings and scripts tailored to my workflow, built to simplify system setup and track changes to configurations like shell and window manager keybindings. Some elements are inspired by open-source dotfiles and scripts from the community, including projects like JaKooLit’s and prasanthrangan’s, among others, which I’ve adapted to suit my needs.

---

## 📂 Repository Structure

Below is the layout of the repository:

```
dotfiles/
├── bin/
│   └── gcal_notify.sh          # Script for calendar event notifications
├── zsh/
│   └── zshrc                   # zsh configuration
├── config/
│   ├── hypr/
│   │   ├── hyprland.conf       # Hyprland window manager configuration
│   │   └── keybindings.conf    # Hyprland keybindings
│   └── nvim/
│       └── init.lua            # Neovim configuration
├── images/
│   └── neovim_setup.png        # Screenshot of my Neovim setup
├── setup.sh                    # Script to create symlinks for configs
└── README.md                   # This file
```

### Configurations

- **Hyprland**: Custom window manager settings (`config/hypr/hyprland.conf`) and keybindings (`config/hypr/keybindings.conf`) for a fast, modern desktop experience.
- **zsh**: Shell configuration (`zsh/zshrc`) with plugins and aliases for efficient command-line workflows.
- **Neovim**: My custom Neovim setup (`config/nvim/init.lua`) for coding on Arch + Hyprland. I use Telescope to zip through files with `<space>sf` or search code with `<space>sg`. Treesitter makes code look crisp, LSP handles completion and jumps like `grd` for go-to-definition, and `cord.nvim` shows what I’m coding on Discord. Managed with `lazy.nvim` for plugins. Try `:Tutor` to start, `<space>sh` to dig into help, or `:checkhealth` if something’s off.
  ![My Neovim Setup](images/neovim_setup.png)

---

## ⚡ Setup Instructions

To apply these configurations on a fresh Arch Linux system:

```bash
# 1. Clone the repository
git clone https://github.com/theamit-969/dotfiles.git ~/dotfiles

# 2. Run the setup script
cd ~/dotfiles
chmod +x setup.sh
./setup.sh
```

The `setup.sh` script creates symlinks to place the configurations in their appropriate system locations.

### 🔗 Symlink Mappings

| Repository Path                    | Symlinked To                          | Purpose                       |
|------------------------------------|---------------------------------------|-------------------------------|
| `zsh/zshrc`                        | `~/.zshrc`                            | zsh configuration             |
| `config/hypr/hyprland.conf`        | `~/.config/hypr/hyprland.conf`        | Hyprland main configuration   |
| `config/hypr/keybindings.conf`     | `~/.config/hypr/keybindings.conf`     | Hyprland keybindings          |
| `config/nvim/init.lua`             | `~/.config/nvim/init.lua`             | Neovim configuration          |
| `bin/gcal_notify.sh`               | `~/.local/bin/gcal_notify.sh`         | Calendar notification script  |

### 🧠 Why Symlinks?

Symlinks allow changes to be made directly in this repository, which are then reflected in the system's configuration paths. This keeps everything centralized and version-controlled.

---

## ✍️ Notes

- Edit configurations within the `~/dotfiles` directory.
- Use `git add . && git commit && git push` to save and back up changes.
- If issues arise, use `git reset` or review commit history to revert changes.

---

## 🚧 Planned Additions

- Starship prompt setup
- Package list for system restoration
- GTK or Waybar theme configurations

---

## 🔒 License

These configurations are shared for personal reference and inspiration. Feel free to use or adapt anything that’s helpful. No formal license is applied.