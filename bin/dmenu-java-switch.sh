#!/bin/bash

choices="Java 11\nJava 14"

chosen=$(echo -e "$choices" | rofi -dmenu -p 'Set Default Java Version' -lines 2 -i)

case "$chosen" in
    'Java 11') sudo archlinux-java set java-11-openjdk ;;
    'Java 14') sudo archlinux-java set java-14-openjdk ;;
esac
