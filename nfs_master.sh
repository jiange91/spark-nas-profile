#!/bin/bash
sudo apt-get update
sudo apt-get install -y nfs-kernel-server
sudo mkdir -p /var/nfs
sudo chown nobody:nogroup /var/nfs
master_ip=$(gethostip -d master)
sudo echo "/var/nfs $master_ip (rw,sync,no_subtree_check,no_root_squash)" | sudo tee -a /etc/exports
sudo exportfs -a
sudo service nfs-kernel-server start 
