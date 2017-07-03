#!/bin/bash
#Requesting a new IP address from dhcp...
sudo dhclient -q > /dev/null 2>&1
if [ $? -eq 0 ]
then 
    count=$(ip addr | grep dynamic | wc -l)
    echo $count
    if [ $count -eq 1 ]
    then echo "pass"
    else echo "fail"
    fi 
else echo "fail"
fi
