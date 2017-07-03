#!/bin/bash
#pass argument like username  google.com:/home/desktop/file

if [ "$2"  == "" ]
then 
  if ["$1" == ""]
   then 
     user=""
  fi
  url=""
fi

remote=$user@$url
echo $remote
rsync $remote /tmp/

if [ $? -eq 0 ]
then  echo "pass"
else echo "fail"
fi
