#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Give people a chance to retry running the installation
trap 'echo "Omakub-mac installation failed! You can retry by running: source ~/.local/share/omakub-mac/install.sh"' ERR

# Ask for app choices
echo "Get ready to make a few choices..."
source ~/.local/share/omakub-mac/install/terminal/required/app-gum.sh >/dev/null
source ~/.local/share/omakub-mac/install/first-run-choices.sh

echo "Installing terminal and desktop tools..."

# Install terminal tools
source ~/.local/share/omakub-mac/install/terminal.sh

# Install desktop tools and tweaks
source ~/.local/share/omakub-mac/install/desktop.sh