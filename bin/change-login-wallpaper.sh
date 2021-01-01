#!/bin/bash
#
# Set login wallpaper and changes the look and feel of terminal apps


# Change the wallpaper 
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
WALLPAPER_FILENAME="$1"

notify-send -u low -t 3000 'Login Wallpaper' "Changed wallpaper to $(basename $WALLPAPER_FILENAME)"

DEST_IMAGE_PATH=/usr/share/backgrounds/custom/`basename $WALLPAPER_FILENAME`
sudo -A rm -rf  /usr/share/backgrounds/custom/*
sudo -A cp $WALLPAPER_FILENAME $DEST_IMAGE_PATH

# Change the login wallpaper
sudo -A sed -i "s|<img id=\"background\" width=\"100%\" height=\"100%\" src=\".*\" />|<img id=\"background\" width=\"100%\" height=\"100%\" src=\"$DEST_IMAGE_PATH\" />|g" /usr/share/lightdm-webkit/themes/arch/index.html
