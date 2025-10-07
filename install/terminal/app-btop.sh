#!/bin/zsh

# This script installs btop, a resource monitor that shows usage and stats for processor, memory, disks, network and processes.
brew install btop

# Use Omakub-mac btop config
mkdir -p ~/.config/btop/themes
cp ~/.local/share/omakub-mac/configs/btop.conf ~/.config/btop/btop.conf
cp ~/.local/share/omakub-mac/themes/tokyo-night/btop.theme ~/.config/btop/themes/tokyo-night.theme