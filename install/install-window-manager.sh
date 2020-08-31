#!/bin/bash
#set -e

# Load utils
source ./utils.sh

###############################################################################
func_print "Installation of window manager software" 4
###############################################################################

packages=(
xorg-xinit
xorg-server
xorg-xmodmap
xorg-xrandr
xorg-xdpyinfo
xorg-xrdb
bspwm
sxhkd
dmenu
xdo
xdotool
feh
sxiv
imagemagick
lightdm
lightdm-webkit2-greeter
papirus-icon-theme
materia-gtk-theme
archlinux-wallpaper
thunar
thunar-archive-plugin
thunar-volman
arandr
lxappearance
lxrandr
nitrogen
picom
playerctl
python-pywal
volumeicon
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Enabling lightdm as display manager" 5

sudo systemctl enable lightdm.service -f

###############################################################################

func_print "Software has been installed" 11
