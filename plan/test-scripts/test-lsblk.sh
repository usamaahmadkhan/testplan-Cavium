#!/bin/bash
#Listing PCI devices using 'lsblk' command
lsblk > /dev/null 2>&1
if [ $? -eq 0 ]
then  echo "pass"
else echo "fail"
fi


