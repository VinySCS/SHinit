#!/usr/bin/env bash
#
###########################################################################
#   systemcare.sh - Treat errors and care your linux.                     #
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
#   Example: ./systemcare.sh                                              #
#                                                                         #
#                                                                         #
#   Description: This script were created by Vinux with studies purposes, #
#                this script treat your linux, install usual softwares    #
#                and manage updates.                                      #
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

CONFIG_FILE="configsc.cf"
RED='\033[31;1m'
GREEN='\033[32;1m'
BLINKING='\033[5m'
MESSAGE= echo -e "

    ${RED} Welcome to $(basename "$0")!! 

    ${GREEN}I'll treat your system, install necessary softwares and update :)
\n
"

eval $(./varsc.sh $CONFIG_FILE)

#   First check to proceed
[ "$(echo $CONF_CHECK_UPDATE)" = "1" ] && CHECK_UPDATE="1"
[ "$(echo $CONF_CHECK_UPGRADE)" = "1" ] && CHECK_UPGRADE="1"
[ "$(echo $CONF_CHECK_MISSINGUPDATE)" = "1" ] && CHECK_MISSINGUPDATE"1"
[ "$(echo $CONF_CHECK_DPKG)" = "1" ] && CHECK_DPKG="1"
[ "$(echo $CONF_CHECK_SNAP)" = "1" ] && CHECK_SNAP="1"
[ "$(echo $CONF_CHECK_WHATSAPP)" = "1" ] && CHECK_WHATSAPP="1"
[ "$(echo $CONF_CHECK_TELEGRAM)" = "1" ] && CHECK_TELEGRAM="1"
[ "$(echo $CONF_CHECK_DISCORD)" = "1" ] && CHECK_DISCORD="1"
[ "$(echo $CONF_CHECK_CHROMIUM)" = "1" ] && CHECK_CHROMIUM="1"
[ "$(echo $CONF_CHECK_LIBREOFFICE)" = "1" ] && CHECK_LIBREOFFICE="1"
[ "$(echo $CONF_CHECK_THUNDERBIRD)" = "1 ]" ] && CHECK_THUNDERBIRD="1"

#   Check updates
if [ "$CHECK_UPDATE" = "1" ]
then
    if [ ! -x "$(sudo apt update)" ]
    then
    echo -e "OK, UPDATED!"
    sleep 1
    fi 
fi

#   Check upgrade
if [ "$CHECK_UPGRADE" = "1" ]
then
    if [ ! -x "$(sudo apt upgrade)" ]
    then
    echo -e "OK, UPGRADED!"
    sleep 1
    fi 
fi

#   Check missing update
if [ "$CHECK_MISSINGUPDATE" = "1" ]
then
    if [ ! -x "$(sudo apt --fix-missing update)" ]
    then
    echo -e "OK, UPDATE FIXED!"
    sleep 1
    fi 
fi

#   Check DPKG and FIX
if [ "$CHECK_DPKG" = "1" ]
then
    if [ ! -x "$( dpkg --configure -a)" ]
    then
    echo -e "OK, DPKG FIXED!"
    sleep 1
    fi 
fi

#   Check if snapd is installed
if [ "$CHECK_SNAP" = "1" ]
then
    if [ ! -x "$(which snap)" ]
    then
        echo -e "${RED}${BLINKING}SNAPD NOT INSTALLED, installing..."
        sleep 2
        sudo apt install snapd -y 
        sleep 1
        echo -e "Ok, snapd has been installed by aptitude :)"
    else
        echo -e "OK, snapd is installed"
        sleep 1
    fi 
fi

#   Check if whatsapp is installed
if [ "$CHECK_WHATSAPP" = "1" ]
then
    if [ ! -x "$(which whatsapp-for-linux)" ]
    then
        echo -e "${RED}${BLINKING}WHATSAPP NOT INSTALLED, installing..."
        sleep 2
        snap install whatsapp-for-linux
        sleep 1
        echo -e "Ok, whatsapp has been installed by snapd :)"
    else
        echo -e "OK, whatsapp is installed"
        sleep 1
    fi 
fi

#   Check if telegram is installed
if [ "$CHECK_TELEGRAM" = "1" ]
then
    if [ ! -x "$(which telegram-desktop)" ]
    then
        echo -e "${RED}${BLINKING}TELEGRAM NOT INSTALLED, installing..."
        sleep 2
        snap install telegram-desktop
        sleep 1
        echo -e "Ok, telegram has been installed by snapd :)"
    else
        echo -e "OK, telegram is installed"
        sleep 1
    fi 
fi

#   Check if discord is installed
if [ "$CHECK_DISCORD" = "1" ]
then
    if [ ! -x "$(which discord)" ]
    then
        echo -e "${RED}${BLINKING}DISCORD NOT INSTALLED, installing..."
        sleep 2
        snap install discord
        sleep 1
        echo -e "Ok, discord has been installed by snapd :)"
    else
        echo -e "OK, discord is installed"
        sleep 1
    fi 
fi

#   Check if chromium is installed
if [ "$CHECK_CHROMIUM" = "1" ]
then
    if [ ! -x "$(which chromium-browser)" ]
    then
        echo -e "${RED}${BLINKING}CHROMIUM NOT INSTALLED, installing..."
        sleep 2
        sudo apt install chromium-browser -y
        sleep 1
        echo -e "${GREEN}Ok, chromium has been installed by aptitude :)"
    else
        echo -e "OK, chromium is installed"
        sleep 1
    fi 
fi

#   Check if libreoffice is installed
if [ "$CHECK_LIBREOFFICE" = "1" ]
then
    if [ ! -x "$(which libreoffice)" ]
    then
        echo -e "${RED}${BLINKING}LIBREOFFICE NOT INSTALLED, installing..."
        sleep 2
        sudo apt install libreoffice -y
        sleep 1
        echo -e "Ok, libreoffice has been installed by snpad :)"
    else
        echo -e "OK, libreoffice is installed"
        sleep 1
    fi 
fi

#   Check if thunderbird is installed
if [ "$CHECK_THUNDERBIRD" = "1" ]
then
    if [ ! -x "$(which thunderbird)" ]
    then
        echo -e "${RED}${BLINKING}THUNDERBIRD NOT INSTALLED, installing..."
        sleep 2
        sudo apt install thunderbird -y
        sleep 1
        echo -e "Ok, thunderbird has been installed by snpad :)"
    else
        echo -e "OK, thunderbird is installed"
        sleep 1
    fi 
fi