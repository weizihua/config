#!/bin/bash

echo "Installing Window Manager"
sh $HOME/.config/install/install-window-manager.sh

echo "Installing System"
sh $HOME/.config/install/install-audio.sh
sh $HOME/.config/install/install-bluetooth.sh
sh $HOME/.config/install/install-printers.sh
sh $HOME/.config/install/install-laptop.sh

echo "Installing Fonts"
sh $HOME/.config/install/install-fonts.sh

echo "Installing Software"
sh $HOME/.config/install/install-software.sh
sh $HOME/.config/install/install-software-dev.sh

echo "Installing System"
sh $HOME/.config/install/install-aur.sh

# Configuration
# ---------------
echo "Configuring System"
sh $HOME/.config/install/configure-oh-my-zsh.sh
sh $HOME/.config/install/configure-conf.sh
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
