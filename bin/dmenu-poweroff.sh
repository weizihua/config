#!/bin/bash

choices="Lock\nLogout\nReboot\nPoweroff"

chosen=$(echo -e "$choices" | rofi -dmenu -p 'Computer' -lines 4 -i)

case "$chosen" in
    Lock) betterlockscreen -l dimblur ;;
    Logout) bspc quit ;;
    Reboot) reboot ;;
    Poweroff) poweroff ;;
esac
