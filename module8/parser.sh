#!/usr/bin/env bash

CONFIG_FILE="$1" #Can import this shellscript to another shellscript file.

[ ! -e "$CONFIG_FILE" ] && echo "ERROR: File doesn't exist."    && exit 1
[ ! -r "$CONFIG_FILE" ] && echo "ERROR: Can't read the file."   && exit 1

while read -r line
do
    [ "$(echo $line | cut -c1)" = "#" ] && continue #If it's commented, continue
    [ ! "$line" ] && continue #If it's blank line, continue

    key="$(echo $line | cut -d = -f 1)" #key = first column
    value="$(echo $line | cut -d = -f 2)" #value = second column

    echo "CONF_$key=$value" #creating a environment variable using "CONF_" and any variables after CONF_
done < "$CONFIG_FILE"
