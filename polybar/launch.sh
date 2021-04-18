#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar example &

polybar main &

hdmi_active=$(xrandr |grep ' connected' |grep 'HDMI' |awk '{print $1}')

# if HDMI1 Connected, then start second external polybar
if [[ ! -z "$hdmi_active" ]]; then
    polybar external &
fi

echo "Polybar launched..."
