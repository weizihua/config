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
archlinux-wallpaper
slack-desktop
skypeforlinux-stable-bin
kops
kind
arch-silence-grub-theme-git
betterlockscreen
sxiv-rifle
golangci-lint-bin
pv
poppler
freeoffice
docker-credential-pass
jvmtop
menu-calc
java-lombok
skaffold
dive
jmeter
)

func_iterate_install_aur "${packages[@]}"

###############################################################################

func_print "Software has been installed" 11

