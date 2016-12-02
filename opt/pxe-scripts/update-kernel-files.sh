#!/bin/bash

# vendredi 2 décembre 2016, 14:44:01 (UTC+0000)

# Update 32 bit version
cp /mnt/mate-ubuntu32/casper/vmlinuz /var/lib/tftpboot/mate-ubuntu/16.04/i386/ 
cp /mnt/mate-ubuntu32/casper/initrd.lz /var/lib/tftpboot/mate-ubuntu/16.04/i386/ 

# Update 64 bit version 
cp /mnt/mate-ubuntu64/casper/vmlinuz /var/lib/tftpboot/mate-ubuntu/16.04/amd64/ 
cp /mnt/mate-ubuntu64/casper/initrd.lz /var/lib/tftpboot/mate-ubuntu/16.04/amd64/ 

