#!/bin/bash

USER=`whoami`
HOME_DIR=/home/$USER

# Install packages
cd $HOME_DIR

echo "Installing bspwm"
sudo pacman -Syu --noconfirm xorg-xinit xorg-server bspwm dmenu sxhkd nitrogen picom lightdm lightdm-gtk-greeter 

echo "Installing fonts"
sudo pacman -Syu --noconfirm ttf-dejavu ttf-jetbrains-mono

echo "Installing applications"
sudo pacman -Syu --noconfirm firefox rxvt-unicode pcmanfm bluez neovim tmux zsh bat htop git ack ripgrep k9s go go-utils ansible fzf helm ranger tree wget

echo "Installing oh-my-zsh"
curl -Lo install_oh_my_zsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
CHSH=no RUNZSH=no sh ./install_oh_my_zsh.sh
rm install_oh_my_zsh.sh

echo "Clonning the config repo"
git clone https://github.com/xvitcoder/config.git 
mkdir -p $HOME_DIR/.config
cp -rf config/* .config/
cp -rf config/.git .config/
cp -rf config/.gitignore .config/

echo "Applying configuration"
python -m pip install --user --upgrade pynvim

rm .zshrc

ln -s --relative $HOME_DIR/.config/zsh/zshrc $HOME_DIR/.zshrc
ln -s --relative $HOME_DIR/.config/tmux/tmux.conf $HOME_DIR/.tmux.conf
ln -s --relative $HOME_DIR/.config/nvim/init.vim $HOME_DIR/.vimrc
ln -s --relative $HOME_DIR/.config/ideavim/ideavimrc $HOME_DIR/.ideavim
ln -s --relative $HOME_DIR/.config/X/Xresources $HOME_DIR/.Xresources
ln -s --relative $HOME_DIR/.config/X/xinitrc $HOME_DIR/.xinitrc
ln -s --relative $HOME_DIR/.config/git/gitconfig $HOME_DIR/.gitconfig

rm -rf config

# Apply urxvt configuration
mkdir -p $HOME_DIR/.urxvt/ext
wget https://raw.githubusercontent.com/majutsushi/urxvt-font-size/master/font-size -O $HOME_DIR/.urxvt/ext/font-size
