#!/bin/bash

declare -i dice
dice1=0
dice2=0
dice3=0
dice4=0
dice5=0
dice6=0

while [ 1 ]
do
	dice[$i]=$(($RANDOM%6+1))
	case "${dice[i]}" in
		1)((dice1++));;
		2)((dice2++));;
		3)((dice3++));;
		4)((dice4++));;
		5)((dice5++));;
		6)((dice6++));;
	esac
	if [ $dice1 -eq 10 ]
	then
		break
	fi
	if [ $dice2 -eq 10 ]
	then
		break
	fi
	if [ $dice3 -eq 10 ]
	then
		break
	fi
	if [ $dice4 -eq 10 ]
	then
		break
	fi
	if [ $dice5 -eq 10 ]
	then
		break
	fi
	if [ $dice6 -eq 10 ]
	then
		break
	fi
done

result[1]=$dice1
result[2]=$dice2
result[3]=$dice3
result[4]=$dice4
result[5]=$dice5
result[6]=$dice6
echo ${result[@]}
max=1
min=6

for (( j=1; j<=${#result[@]}; j++ ))
do
	if [ ${result[j]} -gt $max ]
	then
		max=${j}
	fi
	if [ ${result[j]} -lt $min ]
	then
		min=${j}
	fi
done
echo $max $min
