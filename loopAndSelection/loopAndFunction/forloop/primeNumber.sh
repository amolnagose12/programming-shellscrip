#!/bin/bash

read -p "Enter the number to check prime or not : " n

for (( i=2; i<$n/2; i++ ))

do
	#cal=`echo $n $i | awk '{print $1%$2}'`		
	if [ $((n%i)) == 0 ]
	then
		echo $n is not prime number
	exit
	fi
		
	#else
		
		#echo $n is not prime
	#	if [[ $cal -ne 0 ]]
	#	then	
	#		echo $n is prime number
	#	fi

	#fi	
done
echo "$n is prime number"

