#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/ps-kill-process-name.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.59.16.165
###################################
###################################CONTENT:BEGIN
#C1: sh ps-kill-process-name.sh "<processname>"
#C2: sh ps-kill-process-name.sh "<ps1|ps2|..|psn>"
#ex: sh ps-kill-process-name.sh "haproxy|pure|mysqld|redis|nginx|php|netdata"
###################################
var1=$1
ps aux | egrep $var1 | awk '{print $2}' | xargs kill -9
ps aux | egrep $var1
###################################CONTENT:END
#THE-END
