#!/bin/bash
sudo apt-get update
sudo apt-get install -y nfs-kernel-server
sudo mkdir -p /nfs
sudo chown nobody:nogroup /nfs
master_ip=$(gethostip -d master-nfsLan)
sudo echo "/nfs $master_ip (rw,sync,no_subtree_check,no_root_squash)" | sudo tee -a /etc/exports
sudo exportfs -a
sudo service nfs-kernel-server start 
