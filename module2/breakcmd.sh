#!/usr/bin/env bash
#
###########################################################################
#   breakcmd.sh - A simple break command in lines                         #
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
#   Example: ./breakcmd.sh                                                #
#                                                                         # 
#   Description: This script were created by Vinux with studies purposes  #
#                which the script separate a command by different lines   #
#                according the parameters.                                #
###########################################################################
#   Version: 1.0 8/20/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

find / -iname "*.so" \
        -user vinux  \
        -type f      \
        -size +1M    \
        -exec ls {} \;