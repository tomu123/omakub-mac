#!/bin/bash

if [ $# -eq 0 ]; then
	SUB=$(gum choose "Theme" "Font" "Quit" --height 10 --header "" | tr '[:upper:]' '[:lower:]')
else
	SUB=$1
fi

[ -n "$SUB" ] && [ "$SUB" != "quit" ] && source $OMAKUB_MAC_PATH/bin/omakub-mac-sub/$SUB.sh
