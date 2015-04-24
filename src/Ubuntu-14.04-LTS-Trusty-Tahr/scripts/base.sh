#!/bib/bash

set -eu

# Update distro
apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential

# Setup sudo for vagrant
sed -i -e 's/^%sudo.*/%sudo ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant
