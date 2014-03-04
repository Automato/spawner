#!/bib/bash

set -eu

# Update distro
apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential

