<< intro 
	Muhammad Huzaifa
	20I-0604
	Assignment 01
	TASK 01
intro


#!/bin/bash
echo -n "Enter 1st number: "; read num1
echo -n "Enter 2nd number: "; read num2		#taking use input
echo -n "Enter 3rd number: "; read num3

((num1 %= 10))
((num2 %= 10))	#Calculating rightmost digit of user inputs
((num3 %= 10))

echo "Rightmost digit of 1st input was: $num1" 
echo "Rightmost digit of 2nd input was: $num2" #printing rightmost digits
echo "Rightmost digit of 3rd input was: $num3"

# Checking if any digit is same

if [[ $num1 == $num2 || $num1 == $num3 || $num2 == $num3 ]]
then
	echo "So, The result is TRUE" 			# Printing Results
else
	echo "So, The result is False" 			# Printning Results
fi