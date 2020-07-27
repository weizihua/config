#!/bin/bash

echo "Installing Window Manager"
sh install/install-window-manager.sh

echo "Installing System"
sh install/install-audio.sh
sh install/install-bluetooth.sh
sh install/install-printers.sh
sh install/install-laptop.sh

echo "Installing Fonts"
sh install/install-fonts.sh

echo "Installing Software"
sh install/install-software.sh
sh install/install-software-dev.sh

echo "Installing System"
sh install/install-aur.sh

# Configuration
# ---------------
echo "Configuring System"
sh install/configure-oh-my-zsh.sh
sh install/configure-conf.sh
# ---------------

# Create necessary directories
# ---------------
mkdir $HOME/.bin
mkdir $HOME/.app
# ---------------

# Switch to zsh
# ---------------
env zsh
# ---------------
