#!/usr/bin/env zsh

set -e -o pipefail

set -x

echo "\n<<< Starting Homebrew Setup >>>\n"

# Install brew only if uninstalled
if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/david/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install all packages and apps
brew bundle --verbose