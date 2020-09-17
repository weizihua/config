#!/bin/bash

# fzf | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | sort -f | dmenu -fn 'JetBrains Mono:Regular:size=14' -p 'Find 🡲' | xargs -r xdg-open
# find ~ -type f | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | sort -f | dmenu  -l 30 -fn 'JetBrains Mono:Regular:size=14' -p 'Find 🡲' | xargs -r xdg-open

bspc rule -a \* -o state=floating && alacritty -e fzf | xargs -I '{}' xdg-open '{}'

# choices="11\n14"
#
# chosen=$(echo -e "$choices" | dmenu -fn 'JetBrains Mono:Regular:size=14' -p 'Default Java Version 🡲')
#
# case "$chosen" in
#     11) sudo archlinux-java set java-11-openjdk ;;
#     14) sudo archlinux-java set java-14-openjdk ;;
# esac


