#!/bin/bash
#
# Configuration
# ---------------

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

# Load utils
source $INSTALL_DIR/utils.sh

###############################################################################
func_print "Applying thinkpad system configuration" 4
###############################################################################

# Fix audio driver on thinkpad x1 gen-8
sudo echo "options snd_intel_dspcfg dsp_driver=1" > /etc/modprobe.d/dsp-fix.conf

# Fix freeze when suspending
sudo sed -i 's|GRUB_CMDLINE_LINUX_DEFAULT=".*"|GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet snd_hda_intel.dmic_detect=0"|' /etc/default/grub

###############################################################################

func_print "Configuration Done" 11

