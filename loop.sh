#!/usr/bin/env bash

echo "==== For 1"
#while i=0 is smaller than 10, keep counting until 10
for((i=0;i<10;i++)); do
    echo "${i}"
done
#######################################################################################

echo "==== For 2 (seq)"
#a counter to count sequentially crescent numbers until 10 using seq parameter
    for i in $(seq 10)
do
    echo $i
done
#########################################################################################

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
