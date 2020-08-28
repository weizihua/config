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
mplayer
simplescreenrecorder
flameshot
imagemagick
meld
scrot
mpd
rawtherapee
exiv2
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Office'" 5

packages=(
libreoffice
freeoffice
evince
evolution
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'System'" 5

packages=(
dconf-editor
arc-gtk-theme
gnome-keyring
dunst
xdg-utils
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
ueberzug
tmux
zsh
bat
fzf
vifm
tree
wget
htop
rsync
cronie
gvfs
xsel
dnsutils
iotop
iftop
nmon
glances
neofetch
man
nmap
net-tools
youtube-dl
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Installing software for category 'Drivers'" 5

packages=(
mesa
xf86-video-intel
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Software has been installed" 11

