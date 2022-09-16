#!/usr/bin/env bash
#
###########################################################################
#   usersystem.sh - Treat errors and care your linux.                     #
###########################################################################
#   Author: Vinux                                                         #
#   Maintenance by: Vinux                                                 #
#   GitHub: https://github.com/VinySCS                                    #
#   Discord: Vinux#1657                                                   #
###########################################################################
#   This program is free software: you can redistribute it and/or modify  #
#   it under the terms of the GNU Lesser General Public License as        #
#   published by the Free Software Foundation, either version 2 of the    #
#   GNU Lesser General Public License.                                    #
###########################################################################
#   Example: ./usersystem.sh                                              #
#                                                                         #
#                                                                         #
#   Description: This script were created by Vinux with studies purposes, #
#                this script treat your linux, install usual softwares    #
#                and manage updates.                                      #
###########################################################################
#                                                                         #
#                                                                         #
#                                                                         #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#   Database

DB="db.txt"
TEMP=temp.$$

#   Variables

SEPARATOR=:
GREEN='\033[32;1m'
RED='\033[31;1m'
BLINKING='\033[5m'

#   Tests

[ ! -e "$DB"  ] && echo "ERROR: File doesn't exists." && exit 1
[ ! -r "$DB"  ] && echo "ERROR: File doesn't readable." && exit 1
[ ! -w "$DB"  ] && echo "ERROR: File doesn't writable." && exit 1

#   Functions

ShowUsers () {
        local id="$(echo $1 | cut -d $SEPARATOR -f 1)"
        local name="$(echo $1 | cut -d $SEPARATOR -f 2)"
        local email="$(echo $1 | cut -d $SEPARATOR -f 3)"

        echo -e "${GREEN}ID: ${RED}$id"
        echo -e "${GREEN}Name: ${RED}$name"
        echo -e "${GREEN}Email: ${RED}$email"
}

ListUsers () {
    while read -r line 
    do 
        [ "$(echo $line | cut -c1)" = "#" ] && continue
        [ ! "$line" ] && continue 

    ShowUsers "$line"
    done < "$DB"
}

VerifyUser () {
    grep -i -q "$1$SEPARATOR" "$DB"
}

InsertUser () {
    local name="$(echo $1 | cut -d $SEPARATOR -f 2)"

    if VerifyUser "$name"
    then
        echo -e "${BLINKING}ERROR: The user already exists!!!"
    else
        echo "$*" >> "$DB"
        echo -e "${GREEN}User registered successful!"
    fi
    OrderUsers
}

DeleteUser () {
    VerifyUser "$1" || return 

    grep -i -v "$1$SEPARATOR" "$DB" > "$TEMP"
    mv "$TEMP" "$DB"

    echo "User deleted successful!"
    OrderUsers
}

OrderUsers () {
    sort "$DB" > "$TEMP"
    mv "$TEMP" "$DB"
}