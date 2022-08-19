#!/usr/bin/env bash
#
###########################################################################
#   loopJob.sh - A simple counter to show divisible numbers.              #
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
#   Example: ./loopJob.sh                                                 #
#                                                                         # 
#   Description: This script were created by Vinux with studies purposes  #
#                which shows numbers from 0 to 10 and mark numbers        #
#                that are divisible by 2 without remainders.              #
###########################################################################
#   Version: 1.0 8/16/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

echo "loop for count 0 to 10"

for((i=0;i<=10;i++)); do

    if [ $(($i % 2)) -eq "0" ] && [ "$i" -ne "0" ]; then
        echo "$i Can be divided by 2"
    else
        echo "$i"
    fi
done

