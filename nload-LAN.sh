#!/bin/bash
###################################
#FILE_NAME: /opt/script/nload-LAN.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-06.50.24.518
###################################
###################################CONTENT:BEGIN
ETHERNET_LAN="ens160"
nload $ETHERNET_LAN -t 3000 -i 10000 -o 50000
###################################CONTENT:END
#THE-END
