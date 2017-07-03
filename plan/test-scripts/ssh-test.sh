#!/bin/bash

dpkg --version

if [ $? -eq 0 ]
then yes yes | sudo apt-get install expect
else yes yes | sudo yum install expect
fi

expect ssh-test.exp > /dev/null 2>&1
echo "aaaa"
echo $?
if [ $? -eq 0 ]
then  echo "pass"
else echo "fail"
fi
