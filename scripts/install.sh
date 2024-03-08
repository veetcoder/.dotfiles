#!/bin/bash

DOTFILES="$HOME/.dotfiles"

which brew || bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file $DOTFILES/Brewfile

[ ! -d $HOME/.antidote ] && git clone --depth=1 https://github.com/mattmc3/antidote.git $HOME/.antidote
