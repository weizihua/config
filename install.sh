#!/bin/bash

USER=xvitcoder
HOME_DIR=/home/$USER

# Install packages
cd $HOME_DIR

echo "Installing bspwm"
pacman -Syu xorg-xinit xorg-server bspwm dmenu sxhkd nitrogen picom lightdm lightdm-gtk-greeter 

echo "Installing fonts"
pacman -Syu ttf-dejavu ttf-jetbrains-mono

echo "Installing applications"
pacman -Syu firefox rxvt-unicode pcmanfm bluez neovim tmux zsh bat htop git ack ripgrep k9s go ansible fzf helm ranger tree wget

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "Clonning the config repo"
git clone https://github.com/xvitcoder/config.git

echo "Applying configuration"
cp -Rf config .config

python -m pip install --user --upgrade pynvim

rm .zshrc
ln -s $HOME_DIR/.config/zsh/zshrc $HOME_DIR/.zshrc

#
ln -s $HOME_DIR/.config/tmux/tmux.conf $HOME_DIR/.tmux.conf
ln -s $HOME_DIR/.config/nvim/init.vim $HOME_DIR/.vimrc
ln -s $HOME_DIR/.config/ideavim/ideavimrc $HOME_DIR/.ideavim
ln -s $HOME_DIR/.config/X/Xresources $HOME_DIR/.Xresources
ln -s $HOME_DIR/.config/X/xinitrc $HOME_DIR/.xinitrc
ln -s $HOME_DIR/.config/git/gitconfig $HOME_DIR/.gitconfig

# Apply urxvt configuration
mkdir -p $HOME_DIR/.urxvt/ext
wget https://raw.githubusercontent.com/majutsushi/urxvt-font-size/master/font-size -O $HOME_DIR/.urxvt/ext/font-size

echo "Fixing permissions"
chown -R $USER:$USER $HOME_DIR/*
