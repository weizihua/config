#!/bin/bash
#set -e

# Load utils
source ./utils.sh

###############################################################################
func_print "Installation of window manager software" 4
###############################################################################

packages=(
xorg-init
xorg-server
bspwm
sxhkd
dmenu
xdo
feh
lightdm
lightdm-gtk-greeter
lightdm-gtk-greeter-settings
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
