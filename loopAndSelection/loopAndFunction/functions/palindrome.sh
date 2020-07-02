#! /bin/bash -x

read -p "enter the number : " num

temp=$num
rev=0
result=0
function checkPalindrome(){
while [[ $num -gt 0 ]]
do
	
	#rem=`expr $n % 10`
	rem=$(($num%10))
	#result=`expr $result *10 + $rem`	
	result=$(( result*10 + rem))
	#rev=$(( rev*10+rem ))
	
	num=$(( num/10 ))
done	


if [[ $temp -eq $result ]]
then
	echo $temp is palindrome
else
	echo $temp is not palindrome
fi


}

checkPalindrome

