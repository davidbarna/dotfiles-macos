# Force language for tools like git
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en

# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/dalmeida/.zsh/completions:"* ]]; then export FPATH="/Users/dalmeida/.zsh/completions:$FPATH"; fi
# Set Variables

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export NULLCMD=bat

# Add path to go
export GOPATH=$HOME/go

# Add Locations to $PATH Variable

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add N local
export PATH="$PATH:$N_PREFIX/bin"

# Add pyenv to handle several versions of python
export PATH=$(pyenv root)/shims:$PATH

# Add path to go binaries
export PATH=$PATH:$GOPATH/bin

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# Use ZSH Plugins

# Add Oh My Zsh
source "$DOTFILES/zshrc-oh-my-zsh"

# Create Aliases
source "$DOTFILES/zshrc-aliases"

# bun completions
[ -s "/Users/dalmeida/.bun/_bun" ] && source "/Users/dalmeida/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source ~/.afm-git-configrc

export PATH="/Users/dalmeida/.local/bin:$PATH"
export PATH="/opt/atlassian/bin:$PATH"

. "/Users/dalmeida/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit
