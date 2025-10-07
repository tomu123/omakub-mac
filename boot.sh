#!/bin/zsh

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

# Check if Xcode Command Line Tools are installed
if ! xcode-select -p &>/dev/null; then
  echo "⚠️  Xcode Command Line Tools are not installed."
  echo "👉  Please run the following command to install them, then re-run this script:"
  echo ""
  echo "    xcode-select --install"
  echo ""
  echo "After installation completes, rerun this installer."
  exit 1
else
  echo "✅ Command Line Tools already installed."
fi

# Install brew if not already installed
if ! command -v brew &>/dev/null; then
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update >/dev/null

# Needed for all installers
brew install curl git unzip wget unar >/dev/null

echo "Cloning Omakub-mac..."
rm -rf ~/.local/share/omakub-mac
git clone https://github.com/tomu123/omakub-mac.git ~/.local/share/omakub-mac >/dev/null
if [[ $OMAKUB_MAC_REF != "master" ]]; then
	cd ~/.local/share/omakub-mac
	git fetch origin "${OMAKUB_MAC_REF:-master}" && git checkout "${OMAKUB_MAC_REF:-master}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub-mac/install.sh
