#!/bin/bash


source init.sh

sudo apt -y install resolvconf
sudo sh -c 'echo "nameserver 178.22.122.100\nnameserver 185.51.200.2"' > /etc/resolvconf/resolv.conf.d/head
sudo resolvconf -u
echo "dns servers"
cat /etc/resolv.conf

