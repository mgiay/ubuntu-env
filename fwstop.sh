#!/bin/bash
###################################
#FILE_NAME: /opt/script/fwstop.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.16.328
###################################
###################################CONTENT:BEGIN
#service iptables-persistent flush
service netfilter-persistent flush
/usr/sbin/netfilter-persistent flush
echo "####################################"
/opt/script/fwstatus.sh
###################################CONTENT:END
#THE-END
