#!/bin/bash

touchscreen=`xinput list --name-only | grep -i 'Touchscreen'`

SERVICE="gromit-mpx"
if pgrep -x "$SERVICE" >/dev/null
then
    gromit-mpx --quit

    if [ "$touchscreen" ]; then
        xinput disable "$touchscreen"
    fi
else
    gromit-mpx --active &

    if [ "$touchscreen" ]; then
        xinput enable "$touchscreen"
    fi
fi


