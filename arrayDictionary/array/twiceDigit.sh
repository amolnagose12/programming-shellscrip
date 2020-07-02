#!/bin/bash

read -p " enter start : " n1
read -p " enter end : " n2
i=0
for (( j=n1; j<=n2 ; j++ ))
do	
	if [ $(( $j%11 )) -eq 0 ]
	then
		array[$i]=$j;
		((i++))
	fi
done
for (( j=0; j<=i; j++ ))
do
	echo ${array[j]}
done
