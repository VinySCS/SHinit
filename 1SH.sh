#!/usr/bin/env bash
#It's interesting to use this format of start because it search for your bash in your env

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

