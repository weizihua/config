#!/bin/bash

choices=" Lock\n Logout\n Reboot\n Poweroff"

chosen=$(echo -e "$choices" | dmenu -fn 'JetBrains Mono:Regular:size=14' -p ' Computer' -i)

case "$chosen" in
    *Lock) betterlockscreen -l dimblur ;;
    *Logout) bspc quit ;;
    *Reboot) reboot ;;
    *Poweroff) poweroff ;;
esac
