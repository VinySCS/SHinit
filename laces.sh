#!/usr/bin/env bash

echo "==== For 1"
for((i=0;i<10;i++)); do
#enquanto i=0 for menor do que 10, continue contando até 10
    echo "${i}"
#então imprima na tela a variável i a cada loop
done
#finalizar loop
#######################################################################################

echo "==== For 2 (seq)"
    for i in $(seq 10)
#executa uma contagem até 10 utilizando a variável i e o comando de contagem seq
do
    echo $i
#imprime na tela a contagem completa a qual a variável i recebeu
done
#finalizar loop
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
