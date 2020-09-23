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
)

func_iterate_install_aur "${packages[@]}"

# cd /tmp
# wget https://www.softmaker.net/down/softmaker-freeoffice-978-amd64.tgz -O /tmp/freeoffice.tgz
# tar xvzf freeoffice.tgz
# ./installfreeoffice

###############################################################################

func_print "Software has been installed" 11

