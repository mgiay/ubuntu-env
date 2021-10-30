#!/bin/bash
###################################
#FILE_NAME: /opt/script/remove-deb-cache.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.53.45.025
###################################
###################################CONTENT:BEGIN
now1="$(date +'%Y.%m.%d-%H.%M.%S.%3N')"

cd /var/cache/apt/
du -sh archives
tar -cf archives-$now1.tar.gz archives
ls -lh archives-$now1.tar.gz

find . -name *.deb -exec /bin/rm -rf {} \;
###################################CONTENT:END
#THE-END
