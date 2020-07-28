#!/bin/bash
#set -e


# Load utils
source ./utils.sh

###############################################################################
func_print "Installation of AUR software" 4
###############################################################################

packages=(
pulseaudio-ctl
polybar
)

func_iterate_install_aur "${packages[@]}"

###############################################################################

func_print "Software has been installed" 11

