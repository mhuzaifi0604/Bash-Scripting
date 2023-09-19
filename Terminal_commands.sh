#!/bin/bash
echo "Printing the files on Desktop"
ls
echo "Creating A new file file2.txt"
touch file2.txt
ls
cd Desktop
echo "Copying Contents of file1 into file2"
cp file1.txt file2.txt
echo "Prining contents of file2"
cat file2.txt
echo "Changing file2's name to file3"
mv file2.txt file3.txt
echo "Creating again a file named file2.txt"
touch file2.txt
echo "Removing the file named file2.txt"
rm file2.txt
echo "Printing the files on Desktop"
ls
echo "Printing Working Directory"
pwd
echo "Date Today is "; date
echo "Printing the head contents of file1"
head file1.txt
echo "Printing the tail contents of file1"
tail file3.txt
echo "Sorting file3.txt"
sort file3.txt
echo "making a new directory named my folder"
mkdir myfolder
echo "moving into my folder"
cd myfolder
echo "making a new file named my file"
touch myfile.txt
echo "Printing all files in my folder"
ls
echo "moving out of my folder"
cd ..
echo "printing contents of desktop"
ls
echo "Creating a new file named file4.txt"
touch file4.txt
echo "This is A test for output redirecrion" > file4.txt