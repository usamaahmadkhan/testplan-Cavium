#!/bin/bash

#Creating a temporary file dd-test in /tmp directory

dd if=/dev/zero of=/tmp/dd-test bs=10K count=1 > /dev/null 2>&1

if [ $? -eq 0 ]
then 
  echo "pass"
else 
  echo "fail"
fi
rm /tmp/dd-test
