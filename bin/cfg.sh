#!/bin/bash

choices="vim\nideavim\nzsh\nbspwm\nsxhkd\nranger\npolybar\ntmux\nqutebrowser\nalacritty"

chosen=$(echo -e "$choices" | dmenu -fn 'JetBrains Mono:Regular:size=14' -p '🡲')

case "$chosen" in
    vim) alacritty -e 'cfg-vim' ;;
    ideavim) alacritty -e 'cfg-ideavim' ;;
    zsh) alacritty -e 'cfg-zsh' ;;
