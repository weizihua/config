#!/bin/sh

status() {
  MUTED=$(pacmd list-sources | awk '/\*/,EOF {print}' | awk '/muted/ {print $2; exit}')

  if [ "$MUTED" = "yes" ]; then
    echo ""
  else
    echo ""
  fi
}

listen() {
    status

    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "source" || echo "$event" | grep -q "server"; then
            status
        fi
    done
}

toggle() {
  MUTED=$(pacmd list-sources | awk '/\*/,EOF {print}' | awk '/muted/ {print $2; exit}')
  DEFAULT_SOURCE=$(pacmd list-sources | awk '/\*/,EOF {print $3; exit}')

  if [ "$MUTED" = "yes" ]; then
      pacmd set-source-mute "$DEFAULT_SOURCE" 0
      notify-send -t 1000 " Mic switched On"
  else
      pacmd set-source-mute "$DEFAULT_SOURCE" 1
      notify-send -t 1000 " Mic switched Off"
  fi
}

case "$1" in
    --toggle)
        toggle
        ;;
    *)
        listen
        ;;
esac
