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
abbr -a n nvim
alias zed 'zeditor'
abbr -a c 'code .'

# ── Config files ──
alias bfile 'nvim ~/.bashrc'
alias ffile 'nvim ~/.config/fish/config.fish'

# ── File managers & terminals ──
abbr -a zz yazi
abbr -a open 'thunar .'

# ── Search & history ──
abbr -a h "history | grep "

# ── Dev tools ──
abbr -a nd 'npm run dev'
abbr -a mr 'make run'
abbr -a mp 'makepkg -si'
abbr -a lg lazygit
abbr -a d docker
abbr -a gits 'git status'
abbr -a ghp 'gh repo create --public $(basename "$PWD") --source=. --description="desc" --push'

# ── Mobile & Android ──
alias emu "QT_QPA_PLATFORM=xcb ~/Android/Sdk/emulator/emulator -avd Pixel_9 &"

# ── Media ──
alias rip "yt-dlp -x --audio-format=\"mp3\""

# ── TTY fonts ──
abbr -a bigfont "setfont ter-132b"
abbr -a regfont "setfont default8x16"

# ── Safety wrappers ──
abbr -a mkdir 'mkdir -p'
abbr -a ping 'ping -c 10'
abbr -a tar "tar -xvf"

# ── System ──
alias last-updated 'grep -i "full system upgrade" /var/log/pacman.log | tail -n 1'
alias pwreset 'faillock --reset --user vyrx'
abbr -a pg 'ping -c 10 google.com'
alias cache 'du -sh /var/cache/pacman/pkg .cache/paru'
alias folders 'du -h --max-depth=1'

# ── Package management ──
alias pp "paru -Slq | fzf --multi --preview 'paru -Sii {1}' --preview-window=down:55% | xargs -ro paru -S"
alias cleanup 'sudo pacman -Rns (pacman -Qdtq)'
alias mirrorfix 'sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias cleanc 'sudo pacman -Sc && yay -Sc'

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
