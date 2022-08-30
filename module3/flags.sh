#!/usr/bin/env bash
#
###########################################################################
#   flags.sh - Extract users from /etc/passwd.                            #
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
#   Example: ./flags.sh -s order by alphabetical                          #
#                       -m uppercase                                      #
#                       -h show help menu                                 #
#                       -v show version                                   #
#                                                                         #
#   Description: This script were created by Mateus Müller with studies   #
#                purposes and modified by Vinux, this script will extract #
#                users from /etc/passwd, set in uppercase and order by    #
#                alphabetical.                                            #
###########################################################################
#   Version: 1.0 8/29/2022, by Vinux.                                     #
#       - Script were created.                                            #
#   Version: 1.1 8/29/2022, by Vinux.                                     #
#       - Script were modified.                                           #
#       - Added parameters                                                #
#       - Added basename.                                                 #
#       - Changed if for case                                             #
#   Version: 1.2 8/29/2022, by Vinux.                                     #
#       - Created keys                                                    #
#       - Modified case                                                   #
#   Version: 1.3 8/29/2022, by Vinux.                                     #
#       - Created while                                                   #
#       - Modified if for HELP_KEY and VERSION_KEY                        #
#       - Added error message                                             #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#   Variables:
USERS="$(cat /etc/passwd | cut -d : -f 1)"
MESSAGE_OPEN="
    $(basename $0) - [OPTIONS]
    
    -h - Help
    -v - Version
    -s - Order the output
"

VERSION="v1.3 - 8/29/2022"
ORDER_KEY=0
UPPERCASE_KEY=0
HELP_KEY=0
VERSION_KEY=0

#This oldExec is deprecated and is just here for show another way to do it where you cant use 2 parameters.
#   oldExec:
# if [ "$1" = "-h" ]; then
#     echo "$MESSAGE_OPEN" && exit 0
# fi
# if [ "$1" = "-v" ]; then
#     echo "$VERSION" && exit 0
# fi
# if [ "$1" = "-s" ]; then
#     echo "$USERS" | sort && exit 0
# fi
# if [ "$1" = "-m"]; then
#     echo "$USERS" | tr [a-z] [A-Z] && exit 0
# fi


#   Exec:

while test -n "$1"
do
    case "$1" in
        -h) HELP_KEY=1                                                                 ;;
        -v) VERSION_KEY=1                                                              ;;
        -s) ORDER_KEY=1                                                                ;;
        -m) UPPERCASE_KEY=1                                                            ;;
        *) echo "Incomplete command, use -h to see all available parameters" && exit 1 ;;
    esac
    shift
done

[ $HELP_KEY -eq 1 ] && echo "$MESSAGE_OPEN" 
[ $VERSION_KEY -eq 1 ] && echo "$VERSION" 
[ $ORDER_KEY -eq 1 ] && USERS=$(echo "$USERS" | sort)
[ $UPPERCASE_KEY -eq 1 ] && USERS=$(echo "$USERS" | tr [a-z] [A-Z])

echo "$USERS"