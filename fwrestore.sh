#!/bin/bash
###################################
#FILE_NAME: /opt/script/fwrestore.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.15.917
###################################
###################################CONTENT:BEGIN
FILE_RESTORED='iptables-runningOK.bk'
yes | cp /opt/script/$FILE_RESTORED /etc/iptables/rules.v4
/opt/script/fwrestart.sh
###################################CONTENT:END
#THE-END
