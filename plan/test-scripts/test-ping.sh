#!/bin/bash
ping www.google.com -c 5 > /dev/null 2>&1

if [ $? -eq 0 ]
then echo "pass"
else echo "fail"
fi
