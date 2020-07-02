#!/bin/bash 


#for 3 digit number

#generating array
for (( i=0; i<10; i++ ))
do
	random_number=$(($(($RANDOM%900+100))
	arr[$i]=$random_number
done
#sort array in decending order
for (( i=0; i<10; i++ ))
do
	for (( j=0; j<$(($i-1)); j++ ))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo ${arr[@]}

echo ${arr[1]} " is 2nd largest value"
echo ${arr[8]} " is 2nd smallest value"
