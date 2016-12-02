#!/bin/bash

# vendredi 2 décembre 2016, 12:45:04 (UTC+0100)

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

configure-static-ip.sh

echo 
echo "Starting services ..."
echo

sudo systemctl restart isc-dhcp-service
sudo systemctl restart nfs-kernel-server
sudo systemctl restart tftpd-hpa

