#!/bin/bash

thread="$@."

IFS='|'
count=1
echo -n $thread | while read -n 1 i
do
if [ $count -eq 4 ]; then
    echo "$i "
    count=1
  else
    echo -n "$i "
    count=$(($count + 1))
  fi
done
echo
