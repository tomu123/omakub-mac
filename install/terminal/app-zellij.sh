#!/bin/bash

brew install zellij

mkdir -p ~/.config/zellij/themes
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/omakub-mac/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omakub-mac/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
