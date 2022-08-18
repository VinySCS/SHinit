#!/usr/bin/env bash

echo "==== For 1"
#while i=0 is smaller than 10, keep counting until 10
for((i=0;i<10;i++)); do
    echo "${i}"
done
#######################################################################################

echo "==== For 2 (seq)"
#executa uma contagem até 10 utilizando a variável i e o comando de contagem seq
    for i in $(seq 10)
do
    echo $i
done
#########################################################################################

echo "==== For 3 (array)"
#Array contendo frutas
Frutas=(
'Laranja'
'Ameixa'
'Abacaxi'
'Melancia'
'Jabuticaba'
)
#Laço for para imprimir na tela cada fruta dentro do array
for i in "${Frutas[@]}"; do
    echo "$i"
done

echo "==== While"
#While para imprimir na tela uma contagem crescente dos valores dentro do array
counter=0
while [[ $counter -lt ${#Frutas[@]} ]]; do
    echo $counter
    counter=$(($counter + 1))
done
