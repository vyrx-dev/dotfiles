🐚 Zsh Config Setup Guide (Arch Linux + Hyprland):-

Hey there! This is my personal Zsh setup, crafted for a smooth and fun terminal experience on Arch Linux with Hyprland. 

⚙️ What’s in This Setup

🧠 Handy aliases for Git, npm, Arch package management, and more.
🎨 Slick Powerlevel10k prompt to keep things pretty.
🧩 Plugins like autosuggestions and syntax highlighting for efficiency.
🎮 Optional goodies: Fastfetch system info + random Pokémon logos.
📂 Support for a custom ~/.scripts folder for your tools.


🛠️ Where to Put These Files

📁 Grab these from config/zsh/ in my dotfiles repo.



> 📁 Files are located inside `config/zsh/` of this dotfiles repo.

| File                  | Copy To           | Purpose                                          |
|-----------------------|-------------------|--------------------------------------------------|
| `zshrc`               | `~/.zshrc`        | Main Zsh config – runs on every shell launch     |
| `zprofile`            | `~/.zprofile`     | Login shell config – sets PATH and variables     |


cp ~/dotfiles/config/zsh/zshrc ~/.zshrc
cp ~/dotfiles/config/zsh/zprofile ~/.zprofile
chmod 644 ~/.zshrc ~/.zprofile


📦 Prerequisites & Tools
Let’s get the basics installed to make this sing:
🔧 Zsh + Plugin Essentials
sudo pacman -S zsh git zsh-autosuggestions zsh-syntax-highlighting

🌟 Oh-My-Zsh (Plugin + Theme Manager)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh++)"

🎨 Powerlevel10k (Prompt Theme)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

🛠️ CLI Tools (For Aliases & Visuals)
sudo pacman -S eza xclip tree reflector neofetch timeshift pacman-contrib
yay -S pokemon-colorscripts fastfetch lazygit zoxide yazi


AUR Helper: Use yay or paru. Install yay with:sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

Or paru:sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


MongoDB (for MERN): sudo pacman -S mongodb && sudo systemctl enable mongod

📂 Optional Folder
mkdir -p ~/.scripts ~/cfg_backups


🧪 After Setup: What You’ll See
Fire up a new terminal, and you’ll get:

A cute Pokémon logo (if pokemon-colorscripts is installed).
System stats via fastfetch.
A snappy Powerlevel10k prompt.
Autosuggestions and colored syntax kicking in.
Aliases ready to roll!


💡 Example Aliases to Try

update – Full system update.
gs – Git status check.
nd – Run npm run dev.
pacclean – Clear old Pacman cache.
paccleanall – Wipe all cached packages.
pacckeep – Keep latest 3 package versions.
z – Jump with yazi (if installed).

All aliases live in .zshrc—no extra plugin clutter!

🧠 How This Works (Quick Rundown)

.zshrc: Fires up every terminal. Sets:
$PATH, $EDITOR, $VISUAL.
Aliases for npm, Git, Arch (e.g., paccache commands).
Plugins and Powerlevel10k theme.
Optional fastfetch + Pokémon splash.
zoxide for directory hopping.


.zprofile: Runs on login shells (e.g., Hyprland/TTY). Handles:
Same $PATH, $EDITOR.
Keeps things lean.



No separate alias files—everything’s in one spot!

🧩 Optional Add-ons (Commented Inside)
Check .zshrc for:

🔒 Keybinding Templates: Bind scripts (e.g., music.sh)—uncomment and tweak.
🛠️ Scripts Folder: Drop your own tools in ~/.scripts.


✅ Final Check

Paths in .zprofile need your home dir (e.g., /home/amitwt/).
Test with update, gs, or pacclean.

