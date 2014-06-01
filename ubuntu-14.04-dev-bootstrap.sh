#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y salt-minion
read -p "Enter salt master-server address: " address
echo "master: $address" > /etc/salt/minion
