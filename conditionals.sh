#!/usr/bin/env bash

#This are de variables
VAR=""
VAR2=""

#First method to do "if" 
if [[ "$VAR" = "$VAR2" ]]; then
    echo "The variables are equal"
fi
#Second method to do "if" 
if [[ "$VAR" = "$VAR2" ]]
then
    echo "The variables are equal"
fi
#Third method to do "if"
if [ "$VAR" = "$VAR2" ]
then
    echo "The variables are equal"
fi
#Fourth method to do "if"
if test "$VAR" = "$VAR2"  
then
    echo "The variables are equal"
fi
#Fifth method to do "if"
#This method you can use just when you don't have many conditions to pass through 
#&& ... means that "if the first condition passed return true then execute second condition"
[ "$VAR" = "$VAR2" ] && echo "The variables are equal"