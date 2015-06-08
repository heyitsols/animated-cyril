#!/bin/bash

maxcount=$1
thread="${*:2}."
count=$maxcount
IFS='|'
echo -n $thread | while read -n 1 i
do
if [ $count -eq $maxcount ]; then
    echo "$i "
    count=1
  else
    echo -n "$i "
    count=$(($count + 1))
  fi
done
echo
