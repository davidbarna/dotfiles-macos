# echo "Hello from .zshrc"

# Set Variables

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export NULLCMD=bat

# Add Locations to $PATH Variable

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add N local
export PATH="$PATH:$N_PREFIX/bin"


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}


# Use ZSH Plugins

# Add Oh My Zsh
source "$DOTFILES/zshrc-oh-my-zsh"

# Create Aliases
source "$DOTFILES/zshrc-aliases"



