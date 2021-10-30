#!/bin/bash
###################################
#FILE_NAME: /opt/script/log-truncate.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-06.50.07.904
###################################
###################################CONTENT:BEGIN
echo "" > /var/log/syslog
echo "" > /var/log/messages

mkdir -p /var/spool/postfix/
echo "" > /var/spool/postfix/incoming
echo "" > /var/spool/postfix/active
echo "" > /var/spool/postfix/deferred
echo "" > /var/spool/postfix/maildrop

#find /var/log -type f -exec bash -c 'cat /dev/null > bash' {} \;
LOC=/var/log/
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done

LOC=/var/mail/
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done

LOC=/var/spool/postfix/incoming
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done

LOC=/var/spool/postfix/active
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done

LOC=/var/spool/postfix/deferred
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done

LOC=/var/spool/postfix/maildrop
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done

#"/opt/log/rsync-SETUP-[031]_2_[032-033-034-035].sh"
LOC="/opt/log/rsync-SETUP-[031]_2_[032-033-034-035].sh"
for item in $(find $LOC -type f -name '*.*' ) ; 
    do cat /dev/null > $item ;
done



LOC="/opt/nginx/config/logs/nginx.00080"
for item in $(find $LOC -type f -name '*.*' ) ;
    do cat /dev/null > $item ;
done

LOC="/opt/nginx/config/logs/nginx.64001"
for item in $(find $LOC -type f -name '*.*' ) ;
    do cat /dev/null > $item ;
done

LOC="/opt/nginx/config/logs/nginx.64002"
for item in $(find $LOC -type f -name '*.*' ) ;
    do cat /dev/null > $item ;
done




###################################CONTENT:END
#THE-END
