#!/bin/bash

chosen=$(rg --files ~/Documents ~/Screenshots ~/Downloads ~/Music ~/Photos ~/Video | sort -f | dmen.sh  -l 30 -p 'Find' -i)
xdg-open "$chosen" 2>/dev/null &
