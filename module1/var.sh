#!/usr/bin/env bash
#It's interesting to use this format of start because it search for your bash in your env
#
###########################################################################
#   var.sh - Show examples to use echo.                                   #
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
#   Example: ./var.sh                                                     #
#                                                                         # 
#   Description: This script were created by Vinux with studies purposes  #
#                which just show examples to use echo with variables in   #
#                the script and system variables.                         #
###########################################################################
#   Version: 1.0 8/16/2022, by Vinux.                                     #
#       - Script were created.                                            #
#                                                                         #
#   Tested: Ubuntu 22.04                                                  #
#           bash 5.1.16                                                   #
###########################################################################

echo "That's my first script :)"
#echo print something

WALLET="Wallet"
#To create variable with spaces you need to use ""

echo "$WALLET"
#To show variables you need ""

NUMBER1=22
NUMBER2=44
#In case of number variables you don't need to use ""

TOTAL=$(($NUMBER1+$NUMBER2))
#For sum and another calc always use two (())

echo "$TOTAL"
#For this case you don't need to use ""

outCat=$(cat /etc/passwd | grep Vinux)
#For shell commands always use $()

echo "$outCat"
#For this case you need to use "" because you are not using to to calc something

echo "\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"

echo "Par1: $1"
echo "Par2: $2"
#parameter 1 and 2 who catch the first and second parameter "./script -par1 -par2"

echo "All Parameters: $*"
#print all parameters who we typed after ./script

echo "How many parameters? $#"
#print how many parameters we typed after ./script

echo "Output last command: $?"
#print what's the status of the last command like: 0(ok) 100(error)

echo "PID: $$"
#print the process id of the script

echo $0
#print the name of the script

