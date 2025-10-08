#!/bin/zsh

brew install zellij

mkdir -p ~/.config/zellij/themes
cp ~/.local/share/omakub-mac/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omakub-mac/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
