#!/bin/bash

TIME=3000 #Miliseconds notification should remain visible

# Get the list of external monitors
EXTERNAL_MONITORS=$(xrandr | grep ' connected' | grep -ve "primary" | awk '{print $1}')

# If no external monitor, then exit
if [[ -z "$EXTERNAL_MONITORS" ]]; then 
    # Reload BSPWM
    bspc wm -r
    notify-send -u low -t $TIME ' No external display found'
    exit 0;
fi

# Get the list of displays and select one
INTERNAL_MONITOR=$(xrandr | grep ' connected' | grep "primary" | awk '{print $1}')
EXTERNAL_MONITOR=$(dmenu.sh -p ' Display' -i <<< "$EXTERNAL_MONITORS")

mode=" Dual
 Clone"

position=" Top
 Bottom
 Right
 Left"

cmd_mode=$(dmenu.sh -p ' Mode' -i <<< "$mode")

askPosition () {
    cmd_position=$(dmenu.sh -p ' Position' -i <<< "$position")
    case ${cmd_position} in
        *Top)       xrandr --output $INTERNAL_MONITOR --primary --auto --rotate normal --output $EXTERNAL_MONITOR --auto --rotate normal --above $INTERNAL_MONITOR ;;
        *Bottom)    xrandr --output $INTERNAL_MONITOR --primary --auto --rotate normal --output $EXTERNAL_MONITOR --auto --rotate normal  --below $INTERNAL_MONITOR ;;
        *Left)      xrandr --output $INTERNAL_MONITOR --primary --auto --rotate normal --output $EXTERNAL_MONITOR --auto --rotate normal --left-of $INTERNAL_MONITOR ;;
        *Right)     xrandr --output $INTERNAL_MONITOR --primary --auto --rotate normal --output $EXTERNAL_MONITOR --auto --rotate normal --right-of $INTERNAL_MONITOR ;;
    esac 
}

case ${cmd_mode} in
	*Dual)	 
        askPosition ;;
    *Clone)
        xrandr --output $INTERNAL_MONITOR --primary --auto --output $EXTERNAL_MONITOR --auto --same-as $INTERNAL_MONITOR ;;
esac

# Reload BSPWM
bspc wm -r

