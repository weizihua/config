#!/bin/bash
#
# Configuration
# ---------------
git clone https://github.com/xvitcoder/config.git $HOME/config
mkdir -p $HOME/.config
cp -rf config/* .config/
cp -rf config/.git .config/
cp -rf config/.gitignore .config/

echo "Applying configuration"
python -m pip install --user --upgrade pynvim

rm .zshrc

ln -s --relative $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -s --relative $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -s --relative $HOME/.config/nvim/init.vim $HOME/.vimrc
ln -s --relative $HOME/.config/ideavim/ideavimrc $HOME/.ideavim
ln -s --relative $HOME/.config/X/xprofile $HOME/.xprofile
ln -s --relative $HOME/.config/git/gitconfig $HOME/.gitconfig

rm -rf config
# ---------------
