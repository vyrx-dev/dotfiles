Dotfiles for amitwt - Curated with a double k flair
[A guide to set up a personalized zsh config for Arch Linux with Hyprland]
Welcome to my personalized zsh configuration! This repository contains my custom shell setup for a productive and fun terminal experience on Arch Linux with Hyprland. Designed for MERN development, Arch workflows, and Git usage, it’s ready for anyone to copy and use—adjust paths to suit your system.
Setup Instructions
Prerequisites
[Tools and services needed before setup]
Ensure you have the following installed:

Oh-My-Zsh: sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
Powerlevel10k: git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
Plugins: Install git, zsh-autosuggestions, zsh-syntax-highlighting via sudo pacman -S git zsh-autosuggestions zsh-syntax-highlighting or clone into ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/.
Tools: eza, timeshift, xclip, yay or paru, pokemon-colorscripts, fastfetch, nvim, code, dolphin, yazi, lazygit, tree, reflector, thefuck, zoxide, neofetch, pacman-contrib (for paccache).
Services: mongod (for MongoDB aliases).
Scripts: Create an empty ~/.scripts/ folder (optional scripts can be added later).

Installation
[Step-by-step guide to apply the config]

Clone the Repository:git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles


Copy Configuration Files:
Move .zprofile to ~/.zprofile.
Move .zshrc to ~/.zshrc.
Set permissions: chmod 644 ~/.zprofile ~/.zshrc.


Install an AUR Helper:
On a fresh Arch system, install yay:sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


Or install paru:sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


This ensures AUR aliases like up and un work.


Install Powerlevel10k Theme:
Run p10k configure to customize your prompt and generate ~/.p10k.zsh.


Install Required Tools:
Core packages: sudo pacman -S eza xclip neofetch tree git pacman-contrib.
AUR packages: yay -S pokemon-colorscripts fastfetch lazygit thefuck zoxide yazi.
Optional: sudo pacman -S reflector timeshift.
MongoDB: sudo pacman -S mongodb and enable with sudo systemctl enable mongod.


Verify Paths:
Update .zprofile paths to your home directory.
Ensure ~/cfg_backups/ exists for cfgbackup or adjust the alias.


Create Scripts Folder:
mkdir -p ~/.scripts (scripts are optional; keybindings are commented out).


Test the Setup:
Open a new terminal. You should see a random Pokémon logo and system info via fastfetch. Test aliases like update, ns, wksp, gs, or pacclean to confirm functionality.



Customization
[Tips to tailor the config to your needs]

Adjust codez alias in .zshrc to your dev folder (e.g., ~/projects).
Add custom scripts to ~/.scripts/ if desired (e.g., music.sh).
Modify cfgbackup destination if ~/cfg_backups/ isn’t preferred.
Use keybinding templates in .zshrc to bind scripts (e.g., music.sh) to keys; uncomment and edit as needed.

Notes
[Additional info and tips]

Works best on Arch Linux with Hyprland. Tweak for other systems as needed.
Install thefuck for the fuck alias: yay -S thefuck.
zoxide enhances z navigation: yay -S zoxide && zoxide init zsh >> ~/.zshrc.
pacman-contrib is required for paccache aliases; install with sudo pacman -S pacman-contrib.
A double k touch powers this setup—check out doublek.dev for more!

Enjoy your terminal setup! Contributions are welcome.
