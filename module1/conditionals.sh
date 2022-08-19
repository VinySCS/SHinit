#!/usr/bin/env bash
#
###########################################################################
#   conditionals.sh - Show examples about different ways to use "if".     #
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
#   Example: ./conditionals.sh                                            #
#                                                                         # 
#   Description: This script were created by Vinux with studies purposes  #
#                which just show about different ways to use "if".        #
###########################################################################
#   Version: 1.0 8/16/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#Variables
VAR=""
VAR2=""

#First method
if [[ "$VAR" = "$VAR2" ]]; then
    echo "The variables are equal"
fi
#Second method
if [[ "$VAR" = "$VAR2" ]]
then
    echo "The variables are equal"
fi
#Third method
if [ "$VAR" = "$VAR2" ]
then
    echo "The variables are equal"
fi
#Fourth method
if test "$VAR" = "$VAR2"  
then
    echo "The variables are equal"
fi
#Fifth method
#This method you can use just when you don't have many conditions to pass through 
#&& ... means that "if the first condition passed return true then execute second condition"
[ "$VAR" = "$VAR2" ] && echo "The variables are equal"