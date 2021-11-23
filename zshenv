# echo "Hello from .zshenv"

# Set Variables

export HOMEBREW_CASK_OPTS="--no-quarantine --no-binaries"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Functions

function exists () {
  command -v $1 1>/dev/null 2>/dev/null
}