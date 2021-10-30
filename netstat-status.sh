#!/bin/bash
###################################
#FILE_NAME: /opt/script/netstat-status.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.34.261
###################################
###################################CONTENT:BEGIN
echo "############################################"
echo "TCP:"
netstat -ntlup | egrep "PID|LISTEN" | sort -t: -k2 -n

echo "UDP:"
netstat -ntlup | egrep "PID|udp" | sort -t: -k2 -n
###################################CONTENT:END
#THE-END
