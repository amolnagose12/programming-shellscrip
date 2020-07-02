#! /bin/bash -x

isHead=1
isTail=0
randmoCheck=$((RANDOM%2))

if [[ $isHead = $randomCheck ]]
then
	echo "Head"
else
	echo "Tail"
fi
