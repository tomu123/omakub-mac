#!/bin/bash

# Display system information in the terminal
brew install fastfetch

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use Omakub-mac fastfetch config
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/omakub-mac/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
