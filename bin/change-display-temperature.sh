#!/bin/bash

read temp </tmp/DISPLAY_TEMPERATURE

if [[ $1 = "inc" ]]; then
    temp=$((temp+500))
elif [[ $1 == "dec" ]]; then
    temp=$((temp-500))
fi

if [[ $temp -lt 2000 ]]; then
    temp=2000
elif [[ $temp -gt 8000 ]]; then
    temp=8000
fi

echo ${temp} >/tmp/DISPLAY_TEMPERATURE
sct $temp
