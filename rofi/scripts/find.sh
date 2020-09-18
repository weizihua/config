#!/bin/bash

if [ -z "$1" ]; then
    rg --sortr accessed --glob "!Workspace" --files ~ | sed -e "s|$HOME/||"
else
    xdg-open "$1"
fi
