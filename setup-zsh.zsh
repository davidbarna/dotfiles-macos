#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

# Add brew-installed zsh to list of standard shell in /etc/shells
# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
  echo '/usr/local/bin/zsh already exists in /etc/shells'
else
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi


# Change default shell to brew-installed zsh
if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
  echo '$SHELL is already /usr/local/bin/zsh'
else
  echo "Enter user password to change login shell"
  chsh -s '/usr/local/bin/zsh'
fi


chsh -s '/usr/local/bin/zsh'