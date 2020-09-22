#!/bin/bash
# dmen.sh -p "$1" <&- && echo

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

dmen.sh -p "$1" -nf "$color0" <&-
