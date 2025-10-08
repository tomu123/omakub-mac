#!/bin/zsh

# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
brew install --cask alacritty
xattr -dr com.apple.quarantine "/Applications/Alacritty.app"
mkdir -p ~/.config/alacritty
cp ~/.local/share/omakub-mac/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ~/.local/share/omakub-mac/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ~/.local/share/omakub-mac/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ~/.local/share/omakub-mac/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ~/.local/share/omakub-mac/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp ~/.local/share/omakub-mac/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp ~/.local/share/omakub-mac/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml

# Migrate config format if needed
alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true

source ~/.local/share/omakub-mac/install/desktop/set-alacritty-default.sh