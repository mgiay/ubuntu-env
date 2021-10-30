#!/bin/bash
###################################
#FILE_NAME: /opt/script/fwdelete.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.17.251
###################################
###################################CONTENT:BEGIN
iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
/opt/script/fwsave.sh
/opt/script/fwrestart.sh
echo "####################################"
/opt/script/fwstatus.sh
###################################CONTENT:END
#THE-END
