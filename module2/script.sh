#!/usr/bin/env bash
#
###########################################################################
#   counterAst.sh - A simpĺe counter with asterisks.                      #
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
#   Example: ./counterAst.sh                                              #
#                                                                         #
#   Description: This script were created by Mateus Müller with studies   #
#                purposes which shows asterisks in crescent order         #
#                from right to left and bottom to top according the       #
#                value of the variables.                                  #
###########################################################################
#   Version: 1.0 8/24/2022, by Vinux.                                     #
#       - Script were modified.                                           #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

#   Variables:                                                            
inicio=0
fim=100

#   Tests:
[ $inicio -ge $fim ] && exit 1    #If the variable "$inicio" if bigger or equal "$fim" end the script

#   Execution:
for i in $(seq $inicio $fim); do    #The "i" will store each step of the command seq
    for j in $(seq $i $fim); do    #The "j" will store each step of the command seq
        printf "*"  #Each step of the two for will return a asterisk 
    done    #End of the second for
    printf "\n"    #Each step of the "i" will break the line
done    #Final for i

