#!/usr/bin/env bash
#
###########################################################################
#   varsc.sh - Treat errors and care your linux.                          #
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
#   Example: ./varsc.sh some functions of systemcare.sh                   #
#                                                                         #
#                                                                         #
#   Description: This script were created by Mateus Müller with studies   #
#                purposes and modified by Vinux, this script will be used #
#                by systemcare.sh                                         #
###########################################################################
#   Version: 1.0 9/15/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

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
