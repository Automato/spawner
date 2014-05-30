#!/bin/bash

sudo apt install -y salt-minion
read -p "Enter salt master-server address: " address
echo "master: $address" > /etc/salt/minion
