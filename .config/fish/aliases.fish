# ┌─────────┐
# │ Aliases │
# └─────────┘

# ── Listing ──
alias ls 'eza -1 --icons=auto'
alias l 'eza -lh --icons=auto'
alias ll 'eza -lha --icons=auto --sort=name --group-directories-first'
alias ld 'eza -lhD --icons=auto'
alias lt 'eza --icons=auto --tree'
alias ltt 'eza --tree --level=2 --long --icons --git'
alias lta 'lt -a'

# ── Navigation ──
alias cd 'z'
alias .. 'cd ..'
alias ... 'cd ../..'

# ── Editors ──
alias zed 'zeditor'
abbr -a c 'code .'

# ── Nix ──
abbr -a nb 'sudo nixos-rebuild switch --flake'
abbr -a n 'nvim /etc/nixos/configuration.nix'

# ── Config files ──
alias bfile 'nvim ~/.bashrc'
alias ffile 'nvim ~/.config/fish/config.fish'

# ── File managers & terminals ──
abbr -a zz yazi
abbr -a open 'thunar .'

# ── Search & history ──
abbr -a h "history | grep "

# ── Dev tools ──
abbr -a fr 'flutter-watch'
abbr -a nd 'npm run dev'
abbr -a mr 'make run'
abbr -a mp 'makepkg -si'
abbr -a lg lazygit
abbr -a d docker
abbr -a gits 'git status'
abbr -a gdd 'git diff --stat'
abbr -a ghp 'gh repo create --private $(basename "$PWD") --source=. --description="desc" --push'
abbr -a ghpp 'git init; git add .; git commit -m "initial commit"; gh repo create --private $(basename "$PWD") --source=. --description="desc" --push'
# abbr -a fr flutter run

# ── Mobile & Android ──
alias emu "QT_QPA_PLATFORM=xcb ~/Android/Sdk/emulator/emulator -avd Pixel_9_Pro &"
alias devices "~/Android/Sdk/emulator/emulator -list-avds"

# ── Media ──
alias rip "yt-dlp -x --audio-format=\"mp3\""

# ── GitHub Stars ──
alias stars "gh repo list vyrx-dev --limit 1000 --json stargazerCount | jq '[.[].stargazerCount] | add'"

# ── TTY fonts ──
abbr -a bigfont "setfont ter-132b"
abbr -a regfont "setfont default8x16"

# ── Safety wrappers ──
abbr -a mkdir 'mkdir -p'
abbr -a ping 'ping -c 10'
abbr -a tar "tar -xvf"

# ── System ──
abbr -a pg 'ping -c 10 google.com'
alias last-updated 'grep -i "full system upgrade" /var/log/pacman.log | tail -n 1'
alias pwreset 'faillock --reset --user vyrx'
alias cache 'du -sh /var/cache/pacman/pkg .cache/paru'
alias folders 'du -h --max-depth=1'

# ── Package management ──
alias pp "paru -Slq | fzf --multi --preview 'paru -Sii {1}' --preview-window=down:55% | xargs -ro paru -S"
alias cleanup 'sudo pacman -Rns (pacman -Qdtq)'
alias mirrorfix 'sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias cleanc 'sudo pacman -Sc && yay -Sc'

# ── Pacman / Paru shortcuts ──
abbr -a i sudo pacman -S
abbr -a un sudo pacman -Rns
abbr -a p paru -S
abbr -a up paru -Syu
abbr -a t topgrade

# ── Shell switching ──
alias tobash "chsh $USER -s /usr/bin/bash && echo 'Log out and log back in for change to take effect.'"
alias tofish "chsh $USER -s /usr/bin/fish && echo 'Log out and log back in for change to take effect.'"

# ── Tmux ──
abbr -a tmuxk 'tmux kill-session'

# ── Misc ──
abbr -a chx 'chmod +x'
abbr -a x exit

# ── Snapper / BTRFS ──
abbr -a slsr 'sudo snapper -c root list'
abbr -a slsh 'sudo snapper -c home list'
abbr -a sdu 'sudo btrfs filesystem du -s /.snapshots/*'
abbr -a sdelr 'sudo snapper -c root delete'
abbr -a sdelh 'sudo snapper -c home delete --sync'
abbr -a sbdel 'sudo btrfs subvolume delete'
