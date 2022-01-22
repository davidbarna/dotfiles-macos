#!/usr/bin/env zsh

set -e -o pipefail

set -x

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with `n`, which is installed with brew
# See zshrc for N_PREFIX variable and addition to PATH
if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n..."
  n lts
fi

# Importing .zshrc to ensure its loaded in first execution
source ~/.zshrc

# Install Global NPM Packages

# Retrieve a node module's readme from the command line, and pipe it into less.
npm install --global readme

# Fast, reliable, and secure dependency management.
npm install --global yarn

echo "Global NPM packages installed:"
npm list --global --depth=0