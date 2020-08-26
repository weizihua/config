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

sudo cp $INSTALL_DIR/wallpapers/archlinux-cloud.png /usr/share/backgrounds/archlinux/archlinux-cloud.png

sudo git clone https://github.com/pedropenna/musfealle /usr/share/lightdm-webkit/themes/
sudo cp $INSTALL_DIR/webkit2-theme-files/index.html /usr/share/lightdm-webkit/themes/musfealle/index.html

# sudo sed -i 's/#greeter-session=example-gtk-gnome/greeter-session=lightdm-gtk-greeter/' /etc/lightdm/lightdm.conf
sudo sed -i 's/#greeter-session=example-gtk-gnome/greeter-session=lightdm-webkit2-greeter/' /etc/lightdm/lightdm.conf

# sudo sed -i 's/#background=/background=\/usr\/share\/backgrounds\/archlinux\/archlinux-cloud.png/' /etc/lightdm/lightdm-gtk-greeter.conf
# sudo sed -i 's/#theme-name=/theme-name=Materia-dark/' /etc/lightdm/lightdm-gtk-greeter.conf
# sudo sed -i 's/#icon-theme-name=/icon-theme-name=Papirus/' /etc/lightdm/lightdm-gtk-greeter.conf
# sudo sed -i 's/#xft-antialias=/xft-antialias=true/' /etc/lightdm/lightdm-gtk-greeter.conf
# sudo sed -i 's/#indicators=/indicators=/' /etc/lightdm/lightdm-gtk-greeter.conf
# sudo sed -i 's/#position=/position=45% 65%/' /etc/lightdm/lightdm-gtk-greeter.conf


mkdir -p ~/.cache/i3lock/current
betterlockscreen -u /usr/share/backgrounds/archlinux/archlinux-cloud.png -b 1.0

###############################################################################

func_print "Configuration Done" 11
