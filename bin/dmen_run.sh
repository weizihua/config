#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

dmenu_run -fn "JetBrains Mono:Regular:size=14" -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" $@
