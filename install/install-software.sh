#!/bin/bash
#set -e


# Load utils
source ./utils.sh

###############################################################################

func_print "Installing software for category 'Editors'" 5

packages=(
neovim
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Graphics'" 5

packages=(
gimp
inkscape
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Internet'" 5

packages=(
firefox
qutebrowser
telegram-desktop
qbittorrent
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Multimedia'" 5

packages=(
vlc
simplescreenrecorder
flameshot
imagemagick
meld
scrot
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Office'" 5

packages=(
libreoffice
freeoffice
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'System'" 5

packages=(
dconf-editor
arc-gtk-theme
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Unpack'" 5

packages=(
unace
unrar
zip
unzip
sharutils
uudeview
arj
cabextract
file-roller
)

func_iterate_install "${packages[@]}"

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0

###############################################################################

func_print "Installing software for category 'Tools'" 5

packages=(
alacritty
tmux
zsh
bat
fzf
ranger
tree
wget
rsync
cronie
gvfs
xsel
dnsutils
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Software has been installed" 11

