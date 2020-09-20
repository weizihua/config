#!/bin/bash

choices=" Lock\n Logout\n Reboot\n Poweroff"

chosen=$(echo -e "$choices" | rofi -dmenu -p ' Computer' -lines 4 -i -width 250)

case "$chosen" in
    *Lock) betterlockscreen -l dimblur ;;
    *Logout) bspc quit ;;
    *Reboot) reboot ;;
    *Poweroff) poweroff ;;
esac
