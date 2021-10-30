#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/hostname-change.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-06.49.28.473
###################################
###################################CONTENT:BEGIN
HOST_NAME=$1
hostnamectl set-hostname $HOST_NAME --static
echo "127.0.0.1 "$HOST_NAME >> /etc/hosts
###################################CONTENT:END
#THE-END
