#!/bin/bash
#
# Set lock wallpaper and changes the look and feel of terminal apps


# Change the wallpaper 
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
WALLPAPER_FILENAME="$WALLPAPER_DIR/$1"

notify-send -u low -t 3000 'Lock Wallpaper' "Changed wallpaper to $(basename $WALLPAPER_FILENAME)"

# Change the lock wallpaper
betterlockscreen -u $WALLPAPER_FILENAME -b 1.0

