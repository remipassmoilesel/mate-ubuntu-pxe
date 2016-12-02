#!/bin/bash

echo 
echo "Network configuration ..."
echo

INTERFACE="enp0s8"

ifconfig $INTERFACE down
ifconfig $INTERFACE 192.168.100.1 netmask 255.255.255.0
ifconfig $INTERFACE up

