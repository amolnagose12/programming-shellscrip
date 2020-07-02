#! /bin/bash -x

ran1=$((( RANDOM%90 ) +10 ))
ran2=$((( RANDOM%90 ) +10 ))
ran3=$((( RANDOM%90 ) +10 ))
ran4=$((( RANDOM%90 ) +10 ))
ran5=$((( RANDOM%90 ) +10 ))

#sum=$ran1+$ran2+$ran3+$ran4+$ran5
 echo sum of random numbers

sum=`echo $ran1 $ran2 $ran3 $ran4 $ran5 | awk '{print $1+$2+$3+$4+$5}'`
echo $sum

echo average of 5 random numbers

average=`echo $sum | awk '{print $1/5}'`
echo $average
