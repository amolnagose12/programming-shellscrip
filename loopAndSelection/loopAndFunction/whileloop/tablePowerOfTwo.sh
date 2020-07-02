#! /bin/bash 

read -p "enter no : " n
count=2
while [[ "$count**$n" -le 256 ]]
do
        echo $count $n | awk '{ print $1^$2 }'
        ((n++))
done
echo end

