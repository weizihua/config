#!/bin/bash

choices="vim\nideavim\nzsh\nbspwm\nsxhkd\nranger\npolybar\ntmux\nqutebrowser\nalacritty"

chosen=$(echo -e "$choices" | dmenu -fn 'JetBrains Mono:Regular:size=14' -p '🡲')

case "$chosen" in
    vim) alacritty -e nvim -- $HOME/.config/nvim/init.vim ;;
    ideavim) alacritty -e nvim -- $HOME/.config/ideavim/ideavimrc ;;
    zsh) alacritty -e nvim -- $HOME/.config/zsh/zshrc ;;
    bspwm) alacritty -e nvim -- $HOME/.config/bspwm/bspwmrc ;;
    sxhkd) alacritty -e nvim -- $HOME/.config/sxhkd/sxhkdrc ;;
    ranger) alacritty -e nvim -- $HOME/.config/ranger/rc.conf ;;
    polybar) alacritty -e nvim -- $HOME/.config/polibar/config ;;
    tmux) alacritty -e nvim -- $HOME/.config/tmux/tmux.conf ;;
    qutebrowser) alacritty -e nvim -- $HOME/.config/qutebrowser/config.py ;;
    alacritty) alacritty -e nvim -- $HOME/.config/alacritty/alacritty.yml ;;
esac
