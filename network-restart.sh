#!/bin/bash
###################################
#FILE_NAME: /opt/script/network-restart.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-06.51.41.114
###################################
###################################CONTENT:BEGIN
#UBUNTU NETWORK RESTART
ifdown -a; ifup -a
sleep 5; 
ip a s
echo "#################"
ip route
echo "#################"
netstat -rn
echo "#################"
ping 8.8.8.8 -c 5
###################################CONTENT:END
#THE-END
