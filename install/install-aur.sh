#!/bin/bash
#set -e

tput setaf 3;echo "Installing AUR";tput sgr0;

git clone https://aur.archlinux.org/yay-git.git $HOME/yay-git
cd $HOME/yay-git
makepkg -si
rm -rf $HOME/yay-git

tput setaf 11;
echo "################################################################"
echo "AUR Software has been installed"
echo "################################################################"
echo;tput sgr0

