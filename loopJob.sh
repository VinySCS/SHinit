#!/usr/bin/env bash

echo "loop for count 0 to 10"

for((i=0;i<=10;i++)); do

    if [ $(($i % 2)) -eq "0" ] && [ "$i" -ne "0" ]; then
        echo "$i Can be divided by 2"
    else
        echo "$i"
    fi
done

