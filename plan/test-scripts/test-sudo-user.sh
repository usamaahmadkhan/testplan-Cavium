#!/bin/bash

#creating user with no sudo access
./install-package.sh expect 

username=TestUser
passwd=test
testdir=testt

expect setUpNewUser.exp $username $passwd > /dev/null 2>&1

sudo su -c "mkdir $testdir" $username > /dev/null 2>&1
firstTry=$?

sudo usermod -aG sudo $username > /dev/null 2>&1
#echo "user upgraded to sudo"

echo "$username ALL=NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo > /dev/null 2>&1

sudo su -c "sudo mkdir $testdir" $username > /dev/null 2>&1
if [ !firstTry ] && [ $? ]
then echo "pass"
else echo "fail"
fi

#echo "removing user $username"
sudo deluser --remove-home $username > /dev/null 2>&1
