#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/ip-4-dynamic.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-14.00.14.684
###################################
###################################CONTENT:BEGIN
INTERFACE="ens160"
SUBNET="255.255.255.0"
IP="10.0.1.81"
GW="10.0.1.254"
#ip addr del $IP dev $INTERFACE

ifconfig $INTERFACE $IP netmask $SUBNET
#route delete default gw $GW
#ip addr del $IP dev $INTERFACE

route add default gw $GW

sleep 3

# IP="10.0.255.81"
# ifconfig $INTERFACE:1 $IP netmask $SUBNET
###################################CONTENT:END
#THE-END
