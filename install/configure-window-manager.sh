#!/bin/bash
#
# Configuration
# ---------------

DEFAULT_WALLPAPER="0022.jpg"

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

# Load utils
source $INSTALL_DIR/utils.sh

###############################################################################
func_print "Applying window manager configuration" 4
###############################################################################

# Download wallpapers
mkdir $HOME/Pictures/Wallpapers
git clone https://github.com/xvitcoder/Wallpapers $HOME/Pictures/Wallpapers

# Wallpaper
sudo mkdir /usr/share/backgrounds/custom
# sudo cp $INSTALL_DIR/media/wallpapers/archlinux-cloud.png /usr/share/backgrounds/archlinux/archlinux-cloud.png
sudo cp $HOME/Pictures/Wallpapers/$DEFAULT_WALLPAPER /usr/share/backgrounds/custom/default.jpg

# LightDM Theme
sudo cp -r $INSTALL_DIR/media/lightdm-webkit-themes/arch /usr/share/lightdm-webkit/themes/
sudo sed -i 's/#greeter-session=example-gtk-gnome/greeter-session=lightdm-webkit2-greeter/' /etc/lightdm/lightdm.conf
sudo sed -i 's|webkit_theme.*|webkit_theme\t    = arch|' /etc/lightdm/lightdm-webkit2-greeter.conf


###############################################################################

func_print "Configuration Done" 11
