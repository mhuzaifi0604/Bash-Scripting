<< intro 
	Muhammad Huzaifa
	20I-0604
	Assignment 01
	TASK 04
intro

#!bin/bash
echo "Pattern option: " $1	# getting pattern
echo "No of Lines: " $2		# getting no.of lines
if [ $1 == "left" ]		# check for left pattern
then
	i=0
	while [ $i -le $2 ]	# loop for no.of lines
	do
		j=$i
		while [ $j -ge 0 ]	# loop for stars
		do
			echo -n "*"
			(( j-- ))
		done
		echo " "	# moving on next line
		(( i++ ))
	done
elif [ $1 == "right" ]		# Check for right pattern
then
	for (( i=0; i<$2; i++ ))	# loop for no.of lines
	do
		for (( j=0; j<$2-$i ; j++ ))	# loop for printing sapces less then no.of lines
		do
			echo -n " "		# Printing Spaces
			
		done
		for (( k=$i ; k>0; k-- ))	# Loop for printing incremental stars
			do
				echo -n "*"	# Printing Stars
			done
			echo " "		# Moving on next line
	done
		
elif [ $1 == "center" ]				# Check for center Pattern
then
	var=$2
	spaces=1
	while [ $var -ge 0 ]			# loop for no.of lines
	do
		i=$var
		while [ $i -ge 0 ]		# loop for printing spaces equal to no.of lines
		do
			echo -n "*"		# printing stars
			(( i-- ))
		done
		
		for((j=0;j<$spaces;j++))	# loop for printing spaces
		do
			echo -n " "		# Printing spaces
		done
		
		i=$var
		while [ $i -ge 0 ]		# loop for printing right side stars
		do
			echo -n "*"		# Printing stars
			(( i-- ))
		done
		
		echo " "			# moving onto next line
		(( var-- ))
		(( spaces++ ));(( spaces++ ))
		
	done
fi