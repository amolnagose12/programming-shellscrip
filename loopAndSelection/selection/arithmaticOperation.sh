#! /bin/bash -x

read -p "enter number : " a
read -p "enter number : " b
read -p "enter number : " c

#w=a+b*c
w=`echo $a $b $c | awk '{print $1+$2*$3}'`

#x=a%b+c
x=`echo $a $b $c | awk '{print $1%$2+$3}'`
echo $x
y=c+a/b
y=`echo $a $b $c | awk '{print $3+$1/$2}'`
echo $y

#z=a*b+c
z=`echo $a $b $c | awk '{print $1*$2+$3}'`
echo $z

if [[ ${w%%.*} -gt ${x%%.*} ]] && [[ ${w%%.*} -gt ${y%%.*} ]] && [[ ${w%%.*} -gt ${z%%.*} ]]
then	
	echo $w is maximum

elif [[ ${x%%.*} -gt ${w%%.*} ]] && [[ ${x%%.*} -gt ${y%%.*} ]] && [[ ${x%%.*} -gt ${z%%.*} ]]
then
	echo $x is maximum
elif [[ ${y%%.*} -gt ${w%%.*} ]] && [[ ${y%%.*} -gt ${x%%.*} ]] && [[ ${y%%.*} -gt ${z%%.*} ]]
then
	echo $y is maximum
elif [[ ${z%%.*} -gt ${w%%.*} ]] && [[ ${z%%.*} -gt ${x%%.*} ]] && [[ ${z%%.*} -gt ${y%%.*} ]]

then
	echo $z is maximum
fi

if [[ ${w%%.*} -lt ${x%%.*} ]] && [[ ${w%%.*} -lt ${y%%.*} ]] && [[ ${w%%.*} -lt ${z%%.*} ]]
then
        echo $w is minimum

elif [[ ${x%%.*} -lt ${w%%.*} ]] && [[ ${x%%.*} -lt ${y%%.*} ]] && [[ ${x%%.*} -lt ${z%%.*} ]]
then
        echo $x is minimum
elif [[ ${y%%.*} -lt ${w%%.*} ]] && [[ ${y%%.*} -lt ${x%%.*} ]] && [[ ${y%%.*} -lt ${z%%.*} ]]
then
        echo $y is minimum
elif [[ ${z%%.*} -lt ${w%%.*} ]] && [[ ${z%%.*} -lt ${x%%.*} ]] && [[ ${z%%.*} -lt ${y%%.*} ]]

then
        echo $z is minimum
fi
