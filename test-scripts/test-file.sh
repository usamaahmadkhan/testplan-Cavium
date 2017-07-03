#!/bin/bash

#arg 1 -> path/to/file.bin

if [ "$1" != "" ]
then  
  file $1
else 
  file Hello > /dev/null 2>&1
fi 

if [ $? -eq 0 ]
then echo "pass"
else echo "fail"
fi
