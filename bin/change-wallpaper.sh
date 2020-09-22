#!/bin/bash
#
# Set wallpaper and changes the look and feel of terminal apps


# Change the wallpaper and color scheme
wal --iterative -q -i $1

notify-send -u low -t 3000 'Wallpaper' "Changed wallpaper to $(basename `cat $HOME/.cache/wal/wal`)"

# Change the lock wallpaper
betterlockscreen -u `cat .cache/wal/wal` -b 1.0

DEST_IMAGE_PATH=/usr/share/backgrounds/custom/`basename $(cat .cache/wal/wal)`
sudo -A rm -rf  /usr/share/backgrounds/custom/*
sudo -A cp `cat .cache/wal/wal` $DEST_IMAGE_PATH

# Change the login wallpaper
sudo -A sed -i "s|<img id=\"background\" width=\"100%\" src=\".*\" />|<img id=\"background\" width=\"100%\" src=\"$DEST_IMAGE_PATH\" />|g" /usr/share/lightdm-webkit/themes/arch/index.html

notify-send -u low -t 3000 'Wallpaper' "Changed login background to $(basename `cat $HOME/.cache/wal/wal`)"
