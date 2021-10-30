#!/bin/bash
###################################
#FILE_NAME: /opt/script/get-date-1s.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.52.58.423
###################################
###################################CONTENT:BEGIN
mkdir -p /opt/log/
var1=$(cat /etc/timezone);
var2=$(date +'%:z');
echo "$(date +'%Y.%m.%d-%H.%M.%S.%10N')" "|" $var1 "|" $var2>>/opt/log/date.log
###################################CONTENT:END
#THE-END
