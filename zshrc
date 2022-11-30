# Set Variables

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export NULLCMD=bat

# Add Locations to $PATH Variable

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add Java HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# Add N local
export PATH="$PATH:$N_PREFIX/bin"

# Add Java JDK
export JAVA_HOME="/usr/libexec/java_home"

# And pyenv to handle several versions of python
export PATH=$(pyenv root)/shims:$PATH

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}


# Use ZSH Plugins

# Add Oh My Zsh
source "$DOTFILES/zshrc-oh-my-zsh"

# Create Aliases
source "$DOTFILES/zshrc-aliases"



