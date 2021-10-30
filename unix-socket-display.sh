#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/unix-socket-display.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-13.54.47.371
###################################
###################################CONTENT:BEGIN
#ss -x -a | egrep "Netid|Address" | more
ss -x -a | egrep "Netid|php|fpm|sock"
###################################CONTENT:END
#THE-END
