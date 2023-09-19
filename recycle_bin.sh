<< intro 
	Muhammad Huzaifa
	20I-0604
	Assignment 01
	TASK 03
intro

#!bin/bash
# Taking Arguments
echo "Filename: " $1
# Check for only onr Argument
if [ $# -ne 1 ]	
then
	echo "Wrong Arguments"
else
	# checking if directory isn't already made
	if [ ! -d "safe_rm_recycle" ]
	then
		# Creating Directory
		mkdir safe_rm_recycle
	fi
	# Copying file to dorectory
	cp $1 ./safe_rm_recycle/$1
	# Deleting File
	rm $1				
fi
	