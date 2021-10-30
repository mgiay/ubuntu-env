#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/ram.clear.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.54.47.763
###################################
###################################CONTENT:BEGIN
echo "#########################"
echo "CURRENT RAM FREE:"
free
echo ""
echo ""
echo "#########################"
echo "AFTER RAM FREE:"
free && sync && echo 3 > /proc/sys/vm/drop_caches && free
free
###################################CONTENT:END
#THE-END
