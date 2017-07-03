#!/bin/bash

./install-package.sh expect 

if [ "$1" == "" ]
then 
  # ssh-test.exp username server
   expect ssh-test.exp demo test.rebex.net > /dev/null 2>&1
else
   expect ssh-test.exp $1 $2 > /dev/null 2>&1
fi

if [ $? -eq 0 ]
then  echo "pass"
else echo "fail"
fi
