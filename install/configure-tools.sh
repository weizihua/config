#!/bin/bash
#
# Configuration
# ---------------

INSTALL_DIR="$(dirname "$(readlink -f "$0")")"

# Load utils
source $INSTALL_DIR/utils.sh

###############################################################################
func_print "Applying tools configuration" 4
###############################################################################

# Install fontpreview
git clone https://github.com/sdushantha/fontpreview
cd fontpreview
sudo make install

# Install epub thumbnailer
pip install Pillow
git clone https://github.com/marianosimone/epub-thumbnailer
cd epub-thumbnailer
sudo python install.py install

# Install vifming
git clone https://github.com/cirala/vifmimg
cd vifmimg
cp vifmimg $HOME/.local/bin
cp vifmrun $HOME/.local/bin

# Add some helm repository
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add elastic https://helm.elastic.co

###############################################################################

func_print "Configuration Done" 11


