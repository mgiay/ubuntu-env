#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/watch-command-VAR.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-14.00.18.762
###################################
###################################CONTENT:BEGIN
VAR1=$1
VAR2=$2
watch -n $VAR1 "COLUMN= $VAR2;date"
###################################CONTENT:END
#THE-END
