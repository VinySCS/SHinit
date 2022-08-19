#!/usr/bin/env bash
#
###########################################################################
#   loop.sh - Count number, fruits and number of fruits.                  #
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
#   Example: ./loop.sh                                                    #
#                                                                         # 
#   Description: This script were created by Vinux with studies purposes  #
#                which has tests using for to count until with default    #
#                "for" structure ((i=0;i>10;i++)), different method with  #
#                seq command, Array with fruits as values and while to    #
#                count the values inside the array.                       #
###########################################################################
#   Version: 1.0 8/16/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

echo "==== For 1"
#while i=0 is smaller than 10, keep counting until 10
for((i=0;i<10;i++)); do
    echo "${i}"
done

echo "==== For 2 (seq)"
#a counter to count sequentially crescent numbers until 10 using seq parameter
    for i in $(seq 10)
do
    echo $i
done

echo "==== For 3 (array)"
#Array with fruits
Frutas=(
'Laranja'
'Ameixa'
'Abacaxi'
'Melancia'
'Jabuticaba'
)
#loop to print all fruits in the array sequentially
for i in "${Frutas[@]}"; do
    echo "$i"
done

echo "==== While"
#While to print a count up of numbers according the content of the array
counter=0
while [[ $counter -lt ${#Frutas[@]} ]]; do
    echo $counter
    counter=$(($counter + 1))
done
