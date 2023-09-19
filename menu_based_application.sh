<< intro 
	Muhammad Huzaifa
	20I-0604
	Assignment 01
	TASK 02
intro

#!bin/bash
echo "Choose One of the following options"
echo "1- See and Invert Permissions"
echo "2- Search for a string"
echo "3- File Creation and Coying"		# Creartig Menu
echo "4- Check and Change Modified Date"
echo "5- Exit"
echo -n "Enter Choice: "; read input	# Taking User Choice
case $input in
1)	# case # 01
echo -n "Enter the name of the file: "; read filename	# Taking Filename
ls -l $filename		# Printing Permissions
if [ -r $filename ]
then
	chmod a-r $filename		#Changaing
elif [ ! -r $filename ]			#Permissions
then					# |
	chmod a+r $filename		#With
elif [ -w $filename ]			#Respect
then					#To
	chmod a-w $filename		# |
elif [ ! -w $filename ]			# |
then					# |
	chmod a+w $filename		#The
elif [ -x $filename ]			#User
then
	chmod a-x $filename
elif [ -x $filename ]
then
	chmod a+w $filename
fi
ls -l $filename				# Printing Permissions Again
;;			#case Break
2)	# Case 02
echo -n "Enter the name of the file: "; read filename2		#Taking Filename
echo -n "Enter the string you want to search: ";read string	#Taking String for Search
grep $string $filename2		#Searching For String
;;
3)		#case 03
touch newfile.txt		# Creating a new file
echo -n "Enter number of lines: ";read N
i=1	
for x in *			# Moving in files
do

echo $x				# Printing File name
if [ $(( $i % 2 )) -eq 0 ]	# Checking for even and odd files
then
	head -$N $x >>newfile.txt	#Moving N head lines to newfile
	i=$(( $i + 1))
else
	tail -$N $x >>newfile.txt	#Moving N tail lines to newfile
	i=$(( $i + 1))
fi
done
;;	#case break
4)			#case 04
echo -n "Enter the name of the file you want to check the date of: "; read name2		#taking name of the file
date -r $name2	#date of file
mod=$( date +%H )		#modified date of file
hours=$( date +%H -r $name2 )	#hours in the modified date
if [ $(( $mod - $hours )) -lt 24 ]	#if condition for less then 24 hours of modified date
then
	touch -m $name2		#modifying file date
	
fi
echo -n "$( date ) " 2>&1 | tee -a logFile 	#writing modified date to logfile
echo $name2 >> logFile				#writting name of file to logfile
;;
5)
exit						#if user wants to exit the scripr
;;
*)
echo invalid input				#case for invalid input
;;
esac						# ending cases
