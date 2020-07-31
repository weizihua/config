#!/bin/bash
#
# Configuration
# ---------------

# Load utils
source ./utils.sh

###############################################################################
func_print "Applying configuration" 4
###############################################################################

mkdir -p $HOME/.config
cp -rf $HOME/config/* $HOME/.config/
cp -rf $HOME/config/.git $HOME/.config/
cp -rf $HOME/config/.gitignore $HOME/.config/

func_print "Installing neovim python provider" 3
python -m pip install --user --upgrade pynvim

rm $HOME/.zshrc

func_print "Creating configuration links" 3
ln -s --relative $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -s --relative $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -s --relative $HOME/.config/nvim/init.vim $HOME/.vimrc
ln -s --relative $HOME/.config/ideavim/ideavimrc $HOME/.ideavim
ln -s --relative $HOME/.config/X/xprofile $HOME/.xprofile
ln -s --relative $HOME/.config/git/gitconfig $HOME/.gitconfig
ln -s --relative $HOME/.config/picom/picom.conf $HOME/.picom.conf

rm -rf $HOME/config

sudo chsh -s /bin/zsh $USER

###############################################################################

func_print "Configuration Done" 11
