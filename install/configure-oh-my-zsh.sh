#!/bin/bash

echo "Installing oh-my-zsh"
curl -Lo install_oh_my_zsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
CHSH=no RUNZSH=no sh ./install_oh_my_zsh.sh
rm install_oh_my_zsh.sh

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
