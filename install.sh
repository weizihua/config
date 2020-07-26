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
sudo pacman -Syu --noconfirm firefox vimb qutebrowser pcmanfm bluez bluez-utils neovim tmux zsh bat htop git ack ripgrep k9s go go-utils ansible fzf helm ranger tree wget vagrant jdk-openjdk maven gradle libreoffice

echo "Install AUR"
sudo git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
rm -rf yay-git

echo "Installing AUR packages"
yay -Syu --noconfirm polybar

echo "Installing oh-my-zsh"
curl -Lo install_oh_my_zsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
CHSH=no RUNZSH=no sh ./install_oh_my_zsh.sh
rm install_oh_my_zsh.sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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
ln -s --relative $HOME_DIR/.config/X/xinitrc $HOME_DIR/.xinitrc
ln -s --relative $HOME_DIR/.config/git/gitconfig $HOME_DIR/.gitconfig

rm -rf config

mkdir $HOME_DIR/.bin
mkdir $HOME_DIR/.app

# Switch to zsh
env zsh
