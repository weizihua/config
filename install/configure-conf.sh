#!/bin/bash
#
# Configuration
# ---------------
echo "Applying configuration"
mkdir -p $HOME/.config
cp -rf $HOME/config/* $HOME/.config/
cp -rf $HOME/config/.git $HOME/.config/
cp -rf $HOME/config/.gitignore $HOME/.config/

echo "Installing neovim python provider"
python -m pip install --user --upgrade pynvim

rm $HOME/.zshrc

ln -s --relative $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -s --relative $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -s --relative $HOME/.config/nvim/init.vim $HOME/.vimrc
ln -s --relative $HOME/.config/ideavim/ideavimrc $HOME/.ideavim
ln -s --relative $HOME/.config/X/xprofile $HOME/.xprofile
ln -s --relative $HOME/.config/git/gitconfig $HOME/.gitconfig

rm -rf $HOME/config
# ---------------
