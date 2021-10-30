#!/bin/bash
###################################
#FILE_NAME: /opt/script/ssh-restart.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.40.411
###################################
###################################CONTENT:BEGIN
echo "###################################"
echo "Current SSH PID: "
netstat -ntlup | egrep "PID|LISTEN" | sort -t: -k2 -n | egrep "PID|ssh"

#service ssh restart
systemctl restart sshd
echo "###################################"
echo "New SSH PID: "
sleep 5
netstat -ntlup | egrep "PID|LISTEN" | sort -t: -k2 -n | egrep "PID|ssh"

tail -10f /var/log/syslog | grep "Secure Shell server"
###################################CONTENT:END
#THE-END
