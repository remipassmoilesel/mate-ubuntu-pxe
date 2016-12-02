#!/bin/bash

echo 
echo "Install dependencies ..."
echo

apt-get update
apt-get install tftpd-hpa isc-dhcp-server nfs-kernel-server initramfs-tools pxelinux 
