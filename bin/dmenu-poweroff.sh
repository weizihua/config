#!/bin/bash

choices=" Lock\n Logout\n Reboot\n Poweroff"

chosen=$(echo -e "$choices" | dmenu.sh -p ' Computer' -i)

case "$chosen" in
    *Lock) betterlockscreen -l dimblur ;;
    *Logout) bspc quit ;;
    *Reboot) reboot ;;
    *Poweroff) poweroff ;;
esac
