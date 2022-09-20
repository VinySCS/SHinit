#!/usr/bin/env bash
#
###########################################################################
#   register.sh - Register users.                                         #
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
#   Example: source register.sh (Then you use the variables in terminal)  #
#                                                                         #
#                                                                         #
#   Description: This script were created by Vinux with studies purposes, #
#                this script will be used as database management to       #
#                register clients, search and delete.                     #
###########################################################################
#   Version: 1.0 9/15/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Version: 1.1 9/16/2022, by Vinux.                                     #
#        - Script were finalized                                          #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#   Variables:

SEPARATOR=:
GREEN='\033[32;1m'
RED='\033[31;1m'
BLINKING='\033[5m'

#   Database:

DB=db.txt
TEMP=temp.$$

#   Tests:
#   Checks if can read, write or if the file exists.
[ ! -e "$DB"  ] && echo "ERROR: File doesn't exists." && exit 1
[ ! -r "$DB"  ] && echo "ERROR: File doesn't readable." && exit 1
[ ! -w "$DB"  ] && echo "ERROR: File doesn't writable." && exit 1

#   Functions:

#   Defines the format that the result will be shown.
   FormatData () {
        local id="$(echo $1 | cut -d $SEPARATOR -f 1)"
        local brand="$(echo $1 | cut -d $SEPARATOR -f 2)"
        local product="$(echo $1 | cut -d $SEPARATOR -f 3)"
        local quantity="$(echo $1 | cut -d $SEPARATOR -f 4)"

        echo -e "${GREEN}ID: ${RED}$id"
        echo -e "${GREEN}Brand: ${RED}$brand"
        echo -e "${GREEN}Product: ${RED}$product"
        echo -e "${GREEN}Quantity: ${RED}$quantity"
}

#   This function will show all data when it's called, and also ignore commented lines.
    ShowData () {
        while read -r line 
        do 
            [ "$(echo $line | cut -c1)" = "#" ] && continue
            [ ! "$line" ] && continue 

            FormatData "$line"
        done < "$DB"
}

#   This function will verify data
    CheckData () {
        grep -i -q "$1$SEPARATOR" "$DB"
}

#   This function will sort the data according the id 
    SortData () {
        sort "$DB" > "$TEMP"
        mv "$TEMP" "$DB"
}

#   This function will insert product in database and use CheckData to verify if the id already exists.
    InsertData () {
        local id="$(echo $1 | cut -d $SEPARATOR -f 1)"

        if CheckData "$id"
        then
            echo -e "${BLINKING}ERROR: The id already exists!!!"
        else
            echo "$*" >> "$DB"
            echo -e "${GREEN}User registered successful!"
        fi
        SortData
}

#   This function will delete product from database and use CheckData to verify if it exists.
    DeleteData () {
        CheckData "$1" || return 

        grep -i -v "$1$SEPARATOR" "$DB" > "$TEMP"
        mv "$TEMP" "$DB"

        echo "Product deleted successful!"
        SortData
}



