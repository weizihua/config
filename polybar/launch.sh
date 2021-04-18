#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar example &

polybar main &

external_display=$(xrandr | grep ' connected' | grep -ve 'primary' |awk '{print $1}')

[[ -f "/tmp/EXTERNAL_MONITOR" ]] && external_display_mode=$(cat /tmp/EXTERNAL_MONITOR)

# if HDMI1 Connected, then start second external polybar
if [[ ! -z "$external_display" && "$external_display_mode" == 'dual' ]]; then
    polybar external &
fi

echo "Polybar launched..."
