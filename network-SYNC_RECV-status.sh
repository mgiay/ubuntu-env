#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/network-SYNC_RECV-status.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.57.17.032
###################################
###################################CONTENT:BEGIN
echo "###################################"
date;netstat -nat | awk '{print $6}' | sort | uniq -c | sort -n;date;
echo "###################################"
###################################CONTENT:END
#THE-END
