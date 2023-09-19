# Bash-Scripting

Looking forward to learn Bash Scripting !. This repository contains some codes &amp; scripts I wrote in bash. Hope this can help you all.
Bash Scripting is basically execution of commands that you type on terminal in a saperate executable file with an extension of .sh.
The main advantage of bash scripting is that you don't need to execute a command, wait for the terminal to execute it properly and then type another command.
You can simply write a script in which you place all the commands you want to run and then run the script on the terminal.
You'll see that all of the commands written in the script are being executed one after the other.

# Input Instance

* #!/bin/bash
* echo printing user
* echo $USER        // environmental variable
* echo printing variables
* echo 1st organization:  $1  // asking for argument
* echo printing permissions
* ls -l                   // prints all files along with their permissions

# How to Run the Script

* bash scriptname.sh arguments( if any)
* For instance in this case let's assume the script name as "script.sh"
* bash script.sh huzaifa'sorganization
  
# Expected Output

* printing user
* kali or huzaifi0604 or whatever your username is 
* 1st organization: (huzaifa'sorganization) the argument you entered while running the script due to $1
* printing permissions
* permissions of the files of the directory you are in will be printed on the terminal
