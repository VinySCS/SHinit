#!/usr/bin/env bash
#
###########################################################################
#   upandrepair.sh - Update and repair system.                            #
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
#   Example: ./upandrepair.sh -cr check repositories                      #
#                             -cu check upgrades                          #
#                             -us update system                           #
#                             -rp repair packages                         #
#                             -kv kernel version                          #
#                             -dv distro version                          #
#                             -v script version                           #
#                             -h show help menu                           #
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
#       - Added case logic.                                               #
#   Version: 1.2 8/29/2022, by Vinux.                                     #
#       - Added CHECK_UPGRADE                                             #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#   Variables:
CHECK_REPO=0
CHECK_UPGRADE=0
UPDATE=0
REPAIR=0
KERNEL_VERSION=0
DISTRO_VERSION=0
VERSION_KEY=0
SCRIPT_VERSION=1.2
HELP_KEY=0
MESSAGE="
    $(basename "$0") - PARAMETERS - version $SCRIPT_VERSION

         -cr - Check Repositories
         -cu - Check Upgrades
         -us - Update System
         -rp - Repair Packages
         -kv - Kernel version
         -dv - Distro Version
         -v  - Script Version
         -h  - Show Message
    Created by: Vinux 
"

#   Exec:
while test -n "$1" 
do
    case "$1" in
        -h) HELP_KEY=1                                                                                                  ;;
        -cr) CHECK_REPO=1                                                                                               ;;
        -cu) CHECK_UPGRADE=1                                                                                            ;;
        -us) UPDATE=1                                                                                                   ;;
        -rp) REPAIR=1                                                                                                   ;;
        -kv) KERNEL_VERSION=1                                                                                           ;;
        -dv) DISTRO_VERSION=1                                                                                           ;;
        -v) VERSION_KEY=1                                                                                               ;;
        *) echo "Incomplete command, please complete using parameter or parameters. Type ./upandrepair.sh -h" && exit 1 ;;
    esac
    shift
done

[ $HELP_KEY -eq 1 ] && echo "$MESSAGE"
[ $CHECK_REPO -eq 1 ] && CHECK_REPO=$(sudo apt update) && echo "$CHECK_REPO"
[ $CHECK_UPGRADE -eq 1 ] && CHECK_UPGRADE=$(sudo apt list --upgradable) && echo "$CHECK_UPGRADE"
[ $UPDATE -eq 1 ] && UPDATE=$(sudo apt upgrade) && echo "$UPDATE"
[ $REPAIR -eq 1 ] && REPAIR=$(sudo apt --fix-missing update) && echo "$REPAIR"
[ $KERNEL_VERSION -eq 1 ] && KERNEL_VERSION=$(uname -r) && echo "$KERNEL_VERSION"
[ $DISTRO_VERSION -eq 1 ] && DISTRO_VERSION=$(lsb_release -a) && echo "$DISTRO_VERSION"
[ $VERSION_KEY -eq 1 ] && echo "$SCRIPT_VERSION"