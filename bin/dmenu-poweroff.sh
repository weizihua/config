#!/bin/bash

choices="1.poweroff\n2.reboot"

chosen=$(echo -e "$choices" | dmenu -fn 'JetBrains Mono:Regular:size=14' -p '🡲')

case "$chosen" in
    1.poweroff) poweroff ;;
    2.reboot) reboot ;;
esac
