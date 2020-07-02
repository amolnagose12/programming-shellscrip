#! /bin/bash -x

read -p "Enter year to check leap year or not : " year
echo $year 

if [[ $((year%400)) -eq 0 ]] && [[ $((year%100)) -ne 0 ]]
then
	echo "$year is leap year"

else
	if [[ $((year%4)) -eq 0 ]]
	then 
		echo "$year is leap year"

	else
	echo "$year not leap year"
	
	fi
fi
