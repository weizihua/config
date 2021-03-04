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
xorg-xbacklight
xorg-xinput
bspwm
sxhkd
nitrogen
dmenu
picom
xdo
xdotool
feh
sxiv
imagemagick
lightdm
lightdm-webkit2-greeter
papirus-icon-theme
materia-gtk-theme
nautilus
filemanager-actions
mtpfs
gvfs-nfs
gvfs-gphoto2
gvfs-mtp
blueman
arandr
clipmenu
lxappearance
lxrandr
playerctl
cli-visualizer
gnome-control-center
networkmanager-openvpn-gnome
network-manager-applet
)

func_iterate_install "${packages[@]}"

###############################################################################

func_print "Enabling lightdm as display manager" 5

sudo systemctl enable lightdm.service -f

###############################################################################

func_print "Software has been installed" 11
