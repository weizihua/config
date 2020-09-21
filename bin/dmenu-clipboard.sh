#!/bin/bash

chosen=$(clipmenu | dmen.sh  -l 20 -p 'Clipboard' -i)

echo "$chosen" | xclip -selection clipboard

