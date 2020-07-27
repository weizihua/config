#!/bin/bash

# Install packages
cd $HOME

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

echo "Install AUR"
sudo git clone https://aur.archlinux.org/yay-git.git $HOME/yay-git
cd $HOME/yay-git
makepkg -si
rm -rf $HOME/yay-git

echo "Installing AUR packages"
yay -Syu --noconfirm polybar pulseaudio-ctl

# Configuration
# ---------------
echo "Clonning the config repo"
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
