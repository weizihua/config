#!/bin/bash
#
# Set wallpaper and changes the look and feel of terminal apps


# Change the wallpaper 
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
NITROGEN_PATH="$HOME/.cache/nitrogen/current_wallpaper"

if [[ ! -d `dirname $NITROGEN_PATH` ]]; then
    mkdir -p `dirname $NITROGEN_PATH`
fi

if [[ ! -f `cat $NITROGEN_PATH` ]]; then
    rm -rf $NITROGEN_PATH
fi

if [ -z "$1" ]; then
    if [[ ! -f "${NITROGEN_PATH}" ]]; then
        files=($WALLPAPER_DIR/*)
        WALLPAPER_FILENAME="${files[0]}"
    else
        files=($WALLPAPER_DIR/*)

        total=$(expr ${#files[@]} - 1)
        i=0
        for f in "${files[@]}"; do
            if [[ $i == $total ]]; then
                WALLPAPER_FILENAME="${files[0]}"
                break
            else
                if [[ $f == $(cat $NITROGEN_PATH) ]]; then
                    WALLPAPER_FILENAME="${files[$i+1]}"
                    break
                fi
            fi
            i=$(( i + 1 ))
        done
    fi
else
    WALLPAPER_FILENAME="$1"
fi

echo "$WALLPAPER_FILENAME" > $NITROGEN_PATH

nitrogen --set-scaled `cat $NITROGEN_PATH`;

notify-send -u low -t 3000 'Wallpaper' "Changed wallpaper to $(basename $WALLPAPER_FILENAME)"

DEST_IMAGE_PATH=/usr/share/backgrounds/custom/`basename $WALLPAPER_FILENAME`
sudo -A rm -rf  /usr/share/backgrounds/custom/*
sudo -A cp $WALLPAPER_FILENAME $DEST_IMAGE_PATH

# Change the login wallpaper
sudo -A sed -i "s|<img id=\"background\" width=\"100%\" height=\"100%\" src=\".*\" />|<img id=\"background\" width=\"100%\" height=\"100%\" src=\"$DEST_IMAGE_PATH\" />|g" /usr/share/lightdm-webkit/themes/arch/index.html

# Change the lock wallpaper
betterlockscreen -u $WALLPAPER_FILENAME -b 1.0

