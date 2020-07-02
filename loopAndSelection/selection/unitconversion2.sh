#! /bin/bash -x

echo length =60 feet
length=60

echo breath= 40 feet
breath=40

echo 1 feet = 0.3048 metre
oneFt=0.3048

echo 
unit=meter*meter
a=area
cal=`echo $length $breath $oneFt | awk '{print $1 * $2 * $3 * $3}'`
echo area of rectangular plot

echo $a=$cal $unit


