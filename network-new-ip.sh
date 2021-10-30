#!/bin/bash
###################################
#FILE_NAME: /opt/script/network-new-ip.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-06.51.50.571
###################################
#Ex: network-new-ip.sh <Interace> <NewIP>     <Sequence>
#network-new-ip.sh     eth0     10.0.2.118  1
###################################CONTENT:BEGIN
Interface=$1
NewIP=$2
Sequence=$3

#UBUNTU NETWORK NEW IP:
ifconfig $Interface:$Sequence $NewIP netmask 255.255.255.0; ifup $Interface:$Sequence

ip a s
echo "#################"
ip route
echo "#################"
netstat -rn
echo "#################"
ping 8.8.8.8 -c 5

echo "route delete default gw 10.10.13.1"
echo "route add default gw 10.10.13.1"
echo "ifconfig eth0 10.10.13.11 netmask 255.255.255.0 up"
echo "ifup eth0"
###################################CONTENT:END
#THE-END
