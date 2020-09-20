#!/bin/bash

choices=" vim\n ideavim\n zsh\n bspwm\n sxhkd\n vifm\n polybar\n tmux\n qutebrowser\n alacritty\n rofi"

chosen=$(echo -e "$choices" | rofi -dmenu -p 'Edit Config' -lines 11 -width 450 -i)

case "$chosen" in
    " vim") alacritty -e nvim -- $HOME/.config/nvim/init.vim ;;
    " ideavim") alacritty -e nvim -- $HOME/.config/idea/ideavimrc ;;
    " zsh") alacritty -e nvim -- $HOME/.config/zsh/zshrc ;;
    " bspwm") alacritty -e nvim -- $HOME/.config/bspwm/bspwmrc ;;
    " sxhkd") alacritty -e nvim -- $HOME/.config/sxhkd/sxhkdrc ;;
    " vifm") alacritty -e nvim -- $HOME/.config/vifm/vifmrc ;;
    " polybar") alacritty -e nvim -- $HOME/.config/polibar/config ;;
    " tmux") alacritty -e nvim -- $HOME/.config/tmux/tmux.conf ;;
    " qutebrowser") alacritty -e nvim -- $HOME/.config/qutebrowser/config.py ;;
    " alacritty") alacritty -e nvim -- $HOME/.config/alacritty/alacritty.yml ;;
    " rofi") alacritty -e nvim -- $HOME/.config/rofi/config.rasi ;;
esac
