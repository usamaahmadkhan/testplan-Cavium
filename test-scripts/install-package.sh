#!/bin/bash

dpkg --version > /dev/null 2>&1

if [ $? -eq 0 ]
then yes yes | sudo apt-get install $1 > /dev/null 2>&1 
else yes yes | sudo yum install $1 > /dev/null 2>&1
fi

