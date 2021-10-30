#!/bin/bash
###################################
#FILE_NAME: /opt/script/fwsave.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.16.835
###################################
###################################CONTENT:BEGIN
#service iptables-persistent save
service netfilter-persistent save
echo "####################################"
/opt/script/fwstatus.sh
###################################CONTENT:END
#THE-END
