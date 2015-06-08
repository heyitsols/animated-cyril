#!/bin/bash

# Generates a random 5x3 of ! and . based on md5 hash of input

count=1
for i in $(echo $@ | md5 | grep -o [0-9] | head -15); do
  if [ $count -eq 5 ]; then
    case $i in
      1|3|5|7|9)
        echo "!"
      ;;
      2|4|6|8|0)
        echo "."
      ;;
    esac
    count=1
  else
    case $i in
      1|3|5|7|9)
        echo -n "!"
      ;;
      2|4|6|8|0)
        echo -n "."
      ;;
    esac
    count=$(($count + 1))
  fi
done
