#! /bin/bash -x

echo length =60 feet
length=60

echo breath= 40 feet
breath=40

echo 1 feet = 0.3048 metre
oneFt=0.3048

echo
unit=sq meter
a=area
cal=`echo $length $breath $oneFt | awk '{print $1 * $2 * $3 * $3}'`
echo area of rectangular plot

echo $a=$cal $unit

echo Area of 25 plots in acres

no_of_plots=25
echo 1 sq metre=0.000247105 Acre 

Area=`echo $cal $no_of_plots | awk '{print $1*$2*0.000247105}'`
echo Area of 25 plots= $Area acres
