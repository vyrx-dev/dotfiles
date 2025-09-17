#!/usr/bin/env bash

# Directories to search recursively (includes one-level subdirs)
directories=(
  "$HOME/dotfiles/.config"
  "$HOME/100xCodes"
  "$HOME/100xCodes/Cohort-3-WebDev"
  "$HOME/100xCodes/Projects/"
  "$HOME/Downloads"
  "$HOME/Documents/"
  "$HOME/Testing-repo/"
)

# Extra directories included as-is (no recursion)
extra_directories=(
  "$HOME/Documents/testing/omarchy/"
)

all_dirs=()

# Collect subdirectories using fd (faster and more reliable than find)
for dir in "${directories[@]}"; do
  mapfile -t found_dirs < <(fd --type dir --max-depth 1 --full-path "" "$dir" 2>/dev/null)
  all_dirs+=("${found_dirs[@]}")
done

# Add extra directories
all_dirs+=("${extra_directories[@]}")

# Handle direct argument or interactive selection
if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(printf '%s\n' "${all_dirs[@]}" | sed "s|^$HOME/||" | fzf)
  [[ -n $selected ]] && selected="$HOME/$selected"
fi

# Exit cleanly if nothing selected
[[ -z $selected ]] && exit 0

# Create clean session name
selected_name=$(basename "$selected" | tr '.' '_')

# Handle tmux not running at all
if [[ -z $TMUX ]] && ! pgrep -q tmux; then
  tmux new-session -s "$selected_name" -c "$selected"
  exit 0
fi

# Create session if it doesn't exist
if ! tmux has-session -t "$selected_name" 2>/dev/null; then
  tmux new-session -ds "$selected_name" -c "$selected"
fi

# Switch to session (works inside or outside tmux)
if ! tmux switch-client -t "$selected_name" 2>/dev/null; then
  tmux attach -t "$selected_name"
fi
