#!/bin/bash

choices="1.lock\n2.logout\n3.reboot\n4.poweroff"

chosen=$(echo -e "$choices" | dmenu -fn 'JetBrains Mono:Regular:size=14' -p '🡲')

case "$chosen" in
    1.lock) betterlockscreen -l dimblur ;;
    2.logout) bspc quit ;;
    3.reboot) reboot ;;
    4.poweroff) poweroff ;;
esac
