#! /bin/bash

read -p "enter the number : " num

	case $num in
		1)
			echo "unit"
			;;
		10)
			echo "Ten"
			;;			
		100)
			echo "Hundred"
			;;
		1000)
			echo "Thosand"

			;;
esac
