#!/bin/bash

echo 
echo "Install dependencies ..."
echo

apt-get install tftpd-hpa isc-dhcp-server syslinux nfs-kernel-server initramfs-tools pxelinux 
