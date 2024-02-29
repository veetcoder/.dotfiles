#!/bin/bash

DOTFILES="${XDG_DATA_HOME:-$HOME}/.dotfiles"

# Install homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file $DOTFILES/Brewfile

# Install zap
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) -k
