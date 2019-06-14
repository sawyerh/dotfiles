#!/bin/bash
# Make sure we’re using the latest Homebrew
brew update

# Install command-line dependencies
# coreutils gives us `dircolors` command
brew install coreutils

# Install command-line tools
brew install z
brew install git
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Remove outdated versions
brew cleanup