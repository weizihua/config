#!/bin/bash

amixer set Capture toggle && amixer get Capture | grep '\[off\]' && notify-send -t 1000 "Mic switched Off" || notify-send -t 1000 "Mic switched On"
