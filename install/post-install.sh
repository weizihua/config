#!/bin/bash

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

# Load utils
source $INSTALL_DIR/utils.sh

###############################################################################
func_print "Applying after configuration" 4
###############################################################################

# To install mousemagic, uncomment the following line
#sudo cp $INSTALL_DIR/hid_magicmouse.conf /etc/modprobe.d/hid_magicmouse.conf
sudo cp $INSTALL_DIR/hid_apple.conf /etc/modprobe.d/hid_apple.conf

mkdir -p ~/.cache/i3lock/current
betterlockscreen -u /usr/share/backgrounds/custom/default.jpg -b 1.0

###############################################################################

func_print "Configuration Done" 11
