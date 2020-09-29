#!/bin/bash

chosen=$(clipmenu | dmenu.sh  -l 20 -p 'Clipboard' -i)

echo "$chosen" | xclip -selection clipboard

