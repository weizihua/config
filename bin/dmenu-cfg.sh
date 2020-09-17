#!/bin/bash

choices="vim\nideavim\nzsh\nbspwm\nsxhkd\nvifm\npolybar\ntmux\nqutebrowser\nalacritty\nrofi"

chosen=$(echo -e "$choices" | rofi -dmenu -p 'Edit Config' -lines 11 -i)

case "$chosen" in
    vim) alacritty -e nvim -- $HOME/.config/nvim/init.vim ;;
    ideavim) alacritty -e nvim -- $HOME/.config/idea/ideavimrc ;;
    zsh) alacritty -e nvim -- $HOME/.config/zsh/zshrc ;;
    bspwm) alacritty -e nvim -- $HOME/.config/bspwm/bspwmrc ;;
    sxhkd) alacritty -e nvim -- $HOME/.config/sxhkd/sxhkdrc ;;
    vifm) alacritty -e nvim -- $HOME/.config/vifm/vifmrc ;;
    polybar) alacritty -e nvim -- $HOME/.config/polibar/config ;;
    tmux) alacritty -e nvim -- $HOME/.config/tmux/tmux.conf ;;
    qutebrowser) alacritty -e nvim -- $HOME/.config/qutebrowser/config.py ;;
    alacritty) alacritty -e nvim -- $HOME/.config/alacritty/alacritty.yml ;;
    rofi) alacritty -e nvim -- $HOME/.config/rofi/config.rasi ;;
esac
