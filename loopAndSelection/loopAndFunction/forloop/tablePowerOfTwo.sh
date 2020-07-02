#!/bin/bash 

read -p "enter the num : " num

for (( i=1; i<=$num; i++ ))
do
	table=`echo $i | awk '{print 2^$1}'`
	echo $table
	
done
