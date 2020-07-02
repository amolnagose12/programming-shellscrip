#!/bin/bash 

read -p "enter the choice : " n 

case $n in 

1) 

echo "feet to inches" 

read -p "enter feet : " f 

a=`echo $f | awk '{print $1*12}'` 

echo "feet to inches: $a" 

;; 

2) 

echo "feet to meter" 

read -p "enter feet : " m 

b=`echo $m | awk '{print $1/3.9}'` 

echo "feet to meter: $b" 

;; 

3) 

echo "inch to feet" 

read -p "enter inches : " i 

c=`echo $i | awk '{print $1/12}'` 

echo "feet to meter: $c" 

;; 

4) 

echo " meter to feet " 

read -p "enter feet : " p 
 
d=`echo $p | awk {print $1/12}'` 

echo "feet to meter: $m" 

;; 

5) 

echo "not valid" 

;; 

esac
