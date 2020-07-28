#!/bin/bash

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

echo "Installing Window Manager"
sh $INSTALL_DIR/install-window-manager.sh

echo "Installing System"
sh $INSTALL_DIR/install-audio.sh
sh $INSTALL_DIR/install-bluetooth.sh
sh $INSTALL_DIR/install-printers.sh
sh $INSTALL_DIR/install-laptop.sh

echo "Installing Fonts"
sh $INSTALL_DIR/install-fonts.sh

echo "Installing Software"
sh $INSTALL_DIR/install-software.sh
sh $INSTALL_DIR/install-software-dev.sh

echo "Installing YAY"
sh $INSTALL_DIR/install-yay.sh

echo "Installing AUR Packages"
sh $INSTALL_DIR/install-aur-packages.sh

# Configuration
# ---------------
echo "Configuring System"
sh $INSTALL_DIR/configure-oh-my-zsh.sh
sh $INSTALL_DIR/configure-conf.sh
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
