#!/bin/bash
#set -e


# Load utils
source ./utils.sh

###############################################################################
func_print "Installation of AUR software" 4
###############################################################################

packages=(
neovim-nightly-bin
pulseaudio-ctl
polybar
archlinux-wallpaper
slack-desktop
teams
viber
skypeforlinux-stable-bin
kops
kind
arch-silence-grub-theme-git
betterlockscreen
sxiv-rifle
golangci-lint-bin
pv
xbanish
poppler
freeoffice
docker-credential-pass
jvmtop
menu-calc
java-lombok
skaffold
dive
jmeter
jmtpfs
grpcurl
sct
glow
spring-boot-cli
camunda-modeler
alacritty-ligatures
origin-client
)

func_iterate_install_aur "${packages[@]}"

###############################################################################

func_print "Software has been installed" 11

