#!/bin/bash
###################################
#FILE_NAME: /opt/script/fwrestart.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.14.908
###################################
###################################CONTENT:BEGIN
echo "###################################"
echo "RESTART FIREWALL:"
#service iptables-persistent restart
service netfilter-persistent restart
tail -10f /var/log/syslog | grep netfilter
###################################CONTENT:END
#THE-END
