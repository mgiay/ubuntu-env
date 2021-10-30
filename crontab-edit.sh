#!/bin/bash
###################################
#FILE_NAME: /opt/script/crontab-edit.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.52.49.500
###################################
###################################CONTENT:BEGIN
#Crontab Generator
#https://crontab-generator.org/
#https://crontab.guru/

chattr -i /var/spool/cron/crontabs/root
crontab -e
###################################CONTENT:END
#THE-END
