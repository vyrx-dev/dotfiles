#!/bin/sh
# Environment variables for login shell  # Sets shell env

# Locale settings
export LC_ALL=en_IN.UTF-8                  # Sets locale
export LANG=en_IN.UTF-8                    # Sets language

# LS_COLORS customization
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"  # Colors dirs

# Add scripts to PATH
export PATH=$PATH:~/.scripts                # Adds scripts

# Language and package manager settings
export NVM_DIR="$HOME/.nvm"                 # Node version
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Loads NVM
export PNPM_HOME="$HOME/.local/share/pnpm"  # PNPM path
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;                      # Checks PATH
  *) export PATH="$PNPM_HOME:$PATH" ;;      # Adds PNPM
esac
export GOENV_ROOT="$HOME/.goenv"            # Go env
export PATH="$GOENV_ROOT/bin:$PATH"         # Adds Go
eval "$(goenv init -)"                      # Inits Go
export PATH="$GOROOT/bin:$PATH"             # Go bin
export PATH="$PATH:$GOPATH/bin"             # Go path

# Program paths
export PATH="/opt/aseprite:$PATH"           # Adds Aseprite
export PATH="/opt/nvim/bin:$PATH"           # Adds Neovim
export ANDROID_HOME=$HOME/Android/Sdk       # Android SDK
export PATH=$PATH:$ANDROID_HOME/emulator    # Adds emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools  # Adds tools
