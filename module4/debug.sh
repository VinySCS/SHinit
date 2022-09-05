#!/usr/bin/env bash

#bash +x -v ./script.... (Could be used to debug the script with bash)
#placing -x(start) +x(end) in the code you can debug too while running

DEBUG_KEY=0
DEBUG_LEVEL=0

Debugging () {
    [ $1 -le $DEBUG_LEVEL ] && echo "Debug $* ---------"
}

Sum ()  {
    local total=0

    for i in $(seq 1 25); do
        Debugging 1 "I've entered in for with the value: $i"
        total=$(($total + $i))
        Debugging 2 "After the sum: $total"
    done
}

case "$1" in 
    -d) [ $2 ] && DEBUG_LEVEL=$2    ;;
    *) Sum                          ;;
esac

Sum