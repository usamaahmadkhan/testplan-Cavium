#!/bin/bash
#Requesting a new IP address from dhcp...
sudo dhclient -q
#Checking syslog for last dhcp request...
#Last line in syslog is:"
sudo tail --lines=1 /var/log/syslog > /dev/null 2>&1

count=$(sudo tail --lines=1 /var/log/syslog | grep "bound" | wc -l)

if [ $count -eq 1 ]
then echo "pass"
else echo "fail"
fi
