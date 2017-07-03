#!/bin/bash

#Seeting up job for 10 AM every day

Job="0 10 * * * dd if=/dev/zero of=/tmp/cron-test.img bs=20M"

echo "$Job" > /tmp/crontab.txt && crontab /tmp/crontab.txt

if [ $? -eq 0 ]
then echo "pass"
else echo "fail"
fi
