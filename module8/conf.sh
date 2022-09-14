#!/usr/bin/env bash

CONFIG_FILE="conf.cf"
USE_COLORS=
USE_UPPERCASE=
MESSAGE="Test message"

GREEN="\033[32;1m"
RED="\033[31;1m"

[ ! -r "$CONFIG_FILE" ] && echo "ERROR: Failed to load configuration file" && exit 1

SetParameters () {
   local parameter="$(echo $1 | cut -d = -f 1)"
    local value="$(echo $1 | cut -d = -f 2)"

    case "$parameter" in
        USE_COLORS)     USE_COLORS=$value    ;;
        USE_UPPERCASE)  USE_UPPERCASE=$value ;;
    esac
}

while read -r line
do
    [ "$(echo $line | cut -c1)" = "#" ] && continue
    [ ! "$line" ] && continue
    SetParameters "$line"
done < "$CONFIG_FILE"

[ $USE_UPPERCASE -eq 1 ] && MESSAGE="$(echo -e $MESSAGE | tr [a-z] [A-Z])"
[ $USE_COLORS -eq 1 ] && MESSAGE="$(echo -e ${GREEN}$MESSAGE)"

echo "$MESSAGE"

#echo "VALUE USE_COLORS: $USE_COLORS"
#echo "VALUE USE_UPPERCASE: $USE_UPPERCASE"