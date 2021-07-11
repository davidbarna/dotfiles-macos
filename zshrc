echo "Hello a 3rd time .zshrc"

# Set Variables


# Change ZSH Options


# Create Aliases

# List all files ordered by type with size info 
alias ls='ls -lAFh'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}


# Use ZSH Plugins


# ...and Other Surprises


