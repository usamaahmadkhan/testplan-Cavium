#!/bin/bash

#pass arguments like "nfs-mount.sh example.com:/directory /local/directory 

sudo mount $1 $2 > /dev/null 2>&1

if [ $? -eq 0 ]
then echo pass
else echo fail
fi
