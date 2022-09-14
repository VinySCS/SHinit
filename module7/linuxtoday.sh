#!/usr/bin/env bash
#
###########################################################################
#   linuxtoday.sh - Display values of actions.                             #
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
#   Example: ./linuxtoday.sh extract the main titles from the index       #
#                                                                         #
#                                                                         #
#   Description: This script were created by Mateus Müller with studies   #
#                purposes and modified by Vinux, this script will extract #
#                users titles of linuxtoday index and print in the shell  #
#                with red and green color.                                #
###########################################################################
#   Version: 1.0 9/08/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#    Variables:

TITLE_FILE="titles.txt"

RED="\033[31;1m"
GREEN="\033[32;1m"

#    Checks:

[ ! -x "$(which lynx)" ] && sudo apt install lynx -y 

#    Execution:
lynx -source https://linuxtoday.com/ | grep 'entry-title td-module-title' | sed 's/<\/div.*;">//;s/<\/a.*//;s/<h3.*">//;s/<!--.*-->//' > titles.txt

#    Functions:
while read -r title_lxer
do
    echo -e "${RED}Title: ${GREEN}$title_lxer"
done < "$TITLE_FILE"

