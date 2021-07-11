#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Install brew only if uninstalled
if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install all packages and apps
brew bundle --verbose