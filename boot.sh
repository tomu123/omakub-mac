#!/bin/bash

set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakub-mac is for fresh macOS installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

# Install Xcode Command Line Tools
xcode-select --install

# Install brew if not already installed
if ! command -v brew &>/dev/null; then
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update >/dev/null

# Needed for all installers
brew install curl git unzip wget >/dev/null

echo "Cloning Omakub-mac..."
rm -rf ~/.local/share/omakub-mac
git clone https://github.com/tomu123/omakub-mac.git ~/.local/share/omakub-mac >/dev/null
if [[ $OMAKUB_MAC_REF != "master" ]]; then
	cd ~/.local/share/omakub-mac
	git fetch origin "${OMAKUB_MAC_REF:-stable}" && git checkout "${OMAKUB_MAC_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub-mac/install.sh
