#!/bin/bash
#
# Configuration
# ---------------

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

# Load utils
source $INSTALL_DIR/utils.sh

###############################################################################
func_print "Applying window manager configuration" 4
###############################################################################

# Wallpaper
sudo cp $INSTALL_DIR/wallpapers/archlinux-cloud.png /usr/share/backgrounds/archlinux/archlinux-cloud.png

# LightDM Theme
sudo git clone https://github.com/pedropenna/musfealle /usr/share/lightdm-webkit/themes/
sudo cp $INSTALL_DIR/webkit2-theme-files/index.html /usr/share/lightdm-webkit/themes/musfealle/index.html
sudo sed -i 's/#greeter-session=example-gtk-gnome/greeter-session=lightdm-webkit2-greeter/' /etc/lightdm/lightdm.conf

# Lock Screen
mkdir -p ~/.cache/i3lock/current
betterlockscreen -u /usr/share/backgrounds/archlinux/archlinux-cloud.png -b 1.0

###############################################################################

func_print "Configuration Done" 11
