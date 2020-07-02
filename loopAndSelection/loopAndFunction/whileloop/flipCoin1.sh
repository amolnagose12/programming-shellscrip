#! /bin/bash

isHead=1
isTail=0
countHead=0
countTail=0

while [[ $countHead != 11 && $countTail != 11 ]]
do
	toss=$((RANDOM%2))
	if [[ $toss -eq $isHead ]]
	then
		countHead=`expr $countHead + 1`
	else
		countTail=`expr $count + 1`
	fi
done
echo $countHead heads
echo $countTail Tails
