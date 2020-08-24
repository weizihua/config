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

func_print "Installing neovim python provider" 3
python -m pip install --user --upgrade pynvim

func_print "Installing tmux plugin manager" 3
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm $HOME/.zshrc

func_print "Creating configuration links" 3
ln -s --relative $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -s --relative $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -s --relative $HOME/.config/nvim/init.vim $HOME/.vimrc
ln -s --relative $HOME/.config/idea/ideavimrc $HOME/.ideavimrc
ln -s --relative $HOME/.config/X/xprofile $HOME/.Xprofile
ln -s --relative $HOME/.config/X/xresources $HOME/.Xresources
ln -s --relative $HOME/.config/git/gitconfig $HOME/.gitconfig
ln -s --relative $HOME/.config/picom/picom.conf $HOME/.picom.conf
ln $HOME/.config/k9s/skin.yml $HOME/.k9s/skin.yml

func_print "Creating application links" 3
ln $HOME/.config/bin/dmenu-cfg.sh $HOME/.local/bin/dmenu-cfg.sh
ln $HOME/.config/bin/dmenu-scrot.sh $HOME/.local/bin/dmenu-scrot.sh
ln $HOME/.config/bin/dmenu-poweroff.sh $HOME/.local/bin/dmenu-poweroff.sh

rm -rf $HOME/config
cd ~

sudo chsh -s /bin/zsh $USER

vboxmanage setproperty machinefolder ~/VirtualBox

###############################################################################

func_print "Configuration Done" 11
