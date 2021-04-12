#!/bin/bash
#
# Configuration
# ---------------

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

# Load utils
source $INSTALL_DIR/utils.sh

###############################################################################
func_print "Applying configuration" 4
###############################################################################

mkdir -p $HOME/.config
cp -rf $HOME/config/* $HOME/.config/
cp -rf $HOME/config/.git $HOME/.config/
cp -rf $HOME/config/.gitignore $HOME/.config/

mkdir -p $HOME/.k9s

func_print "Installing neovim python provider" 3
python -m pip install --user --upgrade pynvim

func_print "Installing neovim node provider" 3
sudo npm install -g neovim

func_print "Installing tmux plugin manager" 3
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

rm $HOME/.zshrc

func_print "Creating configuration links" 3
ln -s --relative $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -s --relative $HOME/.config/zsh/zshenv $HOME/.zshenv
ln -s --relative $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -s --relative $HOME/.config/nvim/init.vim $HOME/.vimrc
ln -s --relative $HOME/.config/idea/ideavimrc $HOME/.ideavimrc
ln -s --relative $HOME/.config/X/xprofile $HOME/.xprofile
ln -s --relative $HOME/.config/X/xresources $HOME/.Xresources
ln -s --relative $HOME/.config/git/gitconfig $HOME/.gitconfig
ln -s --relative $HOME/.config/picom/picom.conf $HOME/.picom.conf
ln -s --relative $HOME/.config/streamlink/streamlinkrc $HOME/.streamlinkrc
ln -s --relative $HOME/.config/imwheel/imwheelrc $HOME/.imwheelrc
ln -s --relative $HOME/.config/task/taskrc $HOME/.taskrc
ln $HOME/.config/k9s/skin.yml $HOME/.k9s/skin.yml

func_print "Creating application links" 3

# Copy all bins to .local/bin
FILES=$HOME/.config/bin/*.sh
for f in $FILES
do
    ln $HOME/.config/bin/`basename $f` $HOME/.local/bin/`basename $f`
done

# Add the nautilus scripts
FILES=$HOME/.config/bin/nautilus-scripts/*
for f in $FILES
do
    ln $HOME/.config/bin/nautilus-scripts/`basename $f` $HOME/.local/share/nautilus/scripts/`basename $f`
done


sudo chsh -s /bin/zsh $USER

vboxmanage setproperty machinefolder ~/VirtualBox

mkdir -p $HOME/.local/share/qutebrowser
touch $HOME/.local/share/qutebrowser/blocked-hosts

rm -rf $HOME/config
cd $HOME 

###############################################################################

func_print "Configuration Done" 11
