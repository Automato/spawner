#!/bin/bash

softwareupdate -i -a
xcode-select --install
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install saltstack
read -p "Enter salt master-server address: " address
echo "master: $address" > /etc/salt/minion
