#!/bin/bash

TIME=3000 #Miliseconds notification should remain visible

# Get the list of external monitors
EXTERNAL_MONITORS=$(xrandr | grep ' connected' | grep -ve "primary" | awk '{print $1}')

# If no external monitor, then exit
if [[ -z "$EXTERNAL_MONITORS" ]]; then 
    notify-send -u low -t $TIME ' No external display found'
    exit 0;
fi

# Get the list of displays and select one
INTERNAL_MONITOR=$(xrandr | grep ' connected' | grep "primary" | awk '{print $1}')
EXTERNAL_MONITOR=$(dmenu.sh -p ' Display' -i <<< "$EXTERNAL_MONITORS")

active_monitors_count=$(xrandr --listactivemonitors | grep "Monitors:" | grep -o '[[:digit:]]\+')

mode=" Dual
 Clone"

if [[ "$active_monitors_count" != "1" ]]; then
    mode="$mode
 Disconnect"
fi

position=" Top
 Left
 Right
 Bottom"

cmd_mode=$(dmenu.sh -p ' Mode' -i <<< "$mode")

dualDisplayPosition() {
    cmd_position=$(dmenu.sh -p ' Position' -i <<< "$position")
    case ${cmd_position} in
        *Top)       dualDisplay "--above" ;;
        *Bottom)    dualDisplay "--below" ;;
        *Left)      dualDisplay "--left-of" ;;
        *Right)     dualDisplay "--right-of" ;;
    esac 
}

dualDisplay() {
    xrandr --output $INTERNAL_MONITOR --primary --auto --rotate normal --output $EXTERNAL_MONITOR --auto --rotate normal $1 $INTERNAL_MONITOR
    echo "dual" > /tmp/EXTERNAL_MONITOR
}

cloneDisplay() {
    xrandr --output $INTERNAL_MONITOR --primary --auto --output $EXTERNAL_MONITOR --auto --same-as $INTERNAL_MONITOR
    echo "clone" > /tmp/EXTERNAL_MONITOR
}

disconnectDisplay() {
    # Clean up the state of CLONED display
    rm -rf /tmp/EXTERNAL_MONITOR

    xrandr --auto && xrandr --output $EXTERNAL_MONITOR --off
}

killPolybar() {
    # Terminate already running bar instances
    killall -q polybar
    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
}

killPolybar

case ${cmd_mode} in
	*Dual)
        dualDisplayPosition ;;
    *Clone)
        cloneDisplay ;;
    *Disconnect)
        disconnectDisplay ;;
esac

sleep 2
bspc wm -r
