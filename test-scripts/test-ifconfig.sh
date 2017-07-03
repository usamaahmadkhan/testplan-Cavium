#!/bin/bash
sudo ifconfig -a > /dev/null 2>&1
if [ $? -eq 0 ]
then echo "pass"
else echo "fail"
fi
