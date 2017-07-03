#!/bin/bash
#Creating a temporary file in /tmp
touch /tmp/test-mkfs
#Done. Now Running mkfs with ext2 file system and block size of 1024
sudo mkfs -t ext2 /tmp/test-mkfs 1024 > /dev/null 2>&1

if [ $? -eq 0 ]
then  echo "pass"
else echo "fail"
fi

#Removing temporary file...
rm /tmp/test-mkfs


