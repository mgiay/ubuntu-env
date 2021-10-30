#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/bootlog.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.54.46.910
###################################
###################################CONTENT:BEGIN
clear
echo "##########################################"
#journalctl -b0 SYSLOG_PID=1 | more
journalctl -b0 --system _COMM=systemd | more
###################################CONTENT:END
#THE-END
