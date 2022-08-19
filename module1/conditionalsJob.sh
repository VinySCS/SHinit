#!/usr/bin/env bash
#
###########################################################################
#   conditionalsJob.sh - Simple script to show PID and file name.         #
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
#   Example: ./conditionalsJob.sh 11                                      #
#                                                                         # 
#   Description: This script were created by Vinux with studies purposes  #
#                which shows Process ID and name of the script if the     #
#                first parameter used when try to run the script is       #
#                is a number bigger than 10.                              #   
###########################################################################
#   Version: 1.0 8/16/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#Conditions
if [ "$1" -gt 10 ]
then
    echo "Name of script:" $0
    echo "PID:" $$
fi

#\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

#Teacher example
#!/usr/bin/env bash



#[ $1 -gt 10 ] && echo "Nome do Script: $0 | PID de execução: $$"

