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
#   Description: This script were created by Matheus Müller and modified  #
#                by Vinux with studies purposes, this script treat your   #
#                linux, install usual softwares and manage updates.       #
###########################################################################
#   Version: 1.0 9/16/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################


#   Variables

SEPARATOR=:
GREEN='\033[32;1m'
RED='\033[31;1m'
BLINKING='\033[5m'

#   Database

DB="db.txt"
TEMP=temp.$$

#   Tests
#   This part will check if the database file exists, are readable and writable.
[ ! -e "$DB"  ] && echo "ERROR: File doesn't exists." && exit 1
[ ! -r "$DB"  ] && echo "ERROR: File doesn't readable." && exit 1
[ ! -w "$DB"  ] && echo "ERROR: File doesn't writable." && exit 1

#   Functions
#   This function will pick the data of the database file and organize it according the
#    position between the separator that is ":" ex: 1:2:3 1=id/2=name/3=email
ShowUsers () {
        local id="$(echo $1 | cut -d $SEPARATOR -f 1)"
        local name="$(echo $1 | cut -d $SEPARATOR -f 2)"
        local email="$(echo $1 | cut -d $SEPARATOR -f 3)"

        echo -e "${GREEN}ID: ${RED}$id"
        echo -e "${GREEN}Name: ${RED}$name"
        echo -e "${GREEN}Email: ${RED}$email"
}
#   This function will use the "ShowUsers" function and check if a line has "#"
#   if the line has "#" then it will skip the line to the next line and use
#   the "ShowUsers" schema to print all registers in the bash according the
#   data on database.
ListUsers () {
    while read -r line 
    do 
        [ "$(echo $line | cut -c1)" = "#" ] && continue
        [ ! "$line" ] && continue 

    ShowUsers "$line"
    done < "$DB"
}
#   This function will verify if a user exists in the database by checking
#   the number of the id.
VerifyUser () {
    grep -i -q "$1$SEPARATOR" "$DB"
}
#   This function wil insert users into the database and check if they exist
#   using the "VerifyUser" function, if exists will blink a ERROR phrase and not
#   insert the data, if there isn't any register equal then it will be added to
#   the database and return a green successful message and sort the user list
#   according the "OrderUsers" function.
InsertUser () {
    local name="$(echo $1 | cut -d $SEPARATOR -f 2)"

    if VerifyUser "$name"
    then
        echo -e "${BLINKING}ERROR: The user already exists!!!"
    else
        echo "$*" >> "$DB"
        echo -e "${GREEN}User registered successful!"
    fi
    SortUsers
}
#   This function will verify user in the database, if it exists the user will
#   be deleted and will be created a temporary shell variable to make the changes,
#   then the database file will be replaced with the shell variable.
DeleteUser () {
    VerifyUser "$1" || return 

    grep -i -v "$1$SEPARATOR" "$DB" > "$TEMP"
    mv "$TEMP" "$DB"

    echo "User deleted successful!"
    SortUsers
}
#   This function will sort users from crescent order according the id, 
#   the database file data will be sorted and the data will be moved to 
#   a temporary shell variable then the shell variable will replace the 
#   database file with the values sorted.
SortUsers () {
    sort "$DB" > "$TEMP"
    mv "$TEMP" "$DB"
}