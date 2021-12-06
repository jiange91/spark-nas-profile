#!/bin/bash
sudo apt-get update
sudo apt-get install -y nfs-common
sudo mkdir -p /var/nfs
master_ip=$(gethostip -d master);
sudo mount $master_ip:/var/nfs /var/nfs