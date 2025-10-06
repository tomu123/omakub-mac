#!/bin/bash

THEME_NAMES=("Tokyo Night" "Catppuccin" "Nord" "Everforest" "Gruvbox" "Kanagawa" "Ristretto" "Rose Pine" "Matte Black")
THEME=$(gum choose "${THEME_NAMES[@]}" "<< Back" --header "Choose your theme" --height 12 | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

if [ -n "$THEME" ] && [ "$THEME" != "<<-back" ]; then
  cp $OMAKUB_MAC_PATH/themes/$THEME/alacritty.toml ~/.config/alacritty/theme.toml
  cp $OMAKUB_MAC_PATH/themes/$THEME/zellij.kdl ~/.config/zellij/themes/$THEME.kdl
  sed -i "" "s/theme \".*\"/theme \"$THEME\"/g" ~/.config/zellij/config.kdl
  if [ -d "$HOME/.config/nvim" ]; then
    cp $OMAKUB_MAC_PATH/themes/$THEME/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
  fi

  if [ -f "$OMAKUB_MAC_PATH/themes/$THEME/btop.theme" ]; then
    cp $OMAKUB_MAC_PATH/themes/$THEME/btop.theme ~/.config/btop/themes/$THEME.theme
    sed -i "" "s/color_theme = \".*\"/color_theme = \"$THEME\"/g" ~/.config/btop/btop.conf
  else
    sed -i "" "s/color_theme = \".*\"/color_theme = \"Default\"/g" ~/.config/btop/btop.conf
  fi
fi

source $OMAKUB_MAC_PATH/bin/omakub-mac-sub/menu.sh