#!/bin/bash
###################################
#FILE_NAME: /opt/script/history-clear.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.54.151
###################################
###################################CONTENT:BEGIN
cd
/opt/script/file-unlock.sh
echo "" > .bash_history
history -c
/opt/script/file-lock.sh
history
###################################CONTENT:END
#THE-END
