#!/bin/bash

# Installing homebrew
which brew || bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

cd $HOME/.dotfiles

# Installing brew packages
brew bundle --file Brewfile

# Starting services
yabai --restart-service
skhd --restart-service

# Creating symlinks
stow . 
