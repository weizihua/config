#!/bin/bash


touchscreen=`xinput list --name-only | grep -i 'Touchscreen'`
state=$(xinput list-props "$touchscreen" | grep "Device Enabled" | grep -o "[01]$")

if [ $state == '1' ];then
  xinput --disable "$touchscreen"
else
  xinput --enable "$touchscreen"
fi
