#!/bin/bash
sudo apt-get update
sudo apt-get install -y nfs-common
sudo mkdir -p /nfs
master_ip=$(gethostip -d master-nfsLan);
sudo mount $master_ip:/nfs /nfs