#!/bin/bash

# Needed for all installers
brew update
brew upgrade
brew install curl git unzip wget

# Configure the zsh shell using Omakub-mac defaults
[[ -f ~/.zshrc ]] && mv ~/.zshrc ~/.zshrc.bak
cp ~/.local/share/omakub-mac/configs/zshrc ~/.zshrc

# Load the PATH for use later in the installers
source ~/.local/share/omakub-mac/defaults/zsh/shell

# Run terminal installers
for installer in ~/.local/share/omakub-mac/install/terminal/*.sh; do source $installer; done
