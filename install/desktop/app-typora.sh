#!/bin/bash

# Install with brew
brew install --cask typora

# Add iA Typora theme
mkdir -p ~/.config/Typora/themes
cp ~/.local/share/omakub-mac/configs/typora/ia_typora.css ~/.config/Typora/themes/
cp ~/.local/share/omakub-mac/configs/typora/ia_typora_night.css ~/.config/Typora/themes/
