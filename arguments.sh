#!/bin/bash
echo printing user
echo $USER
echo printing variables
echo 1st organization $1
shift
echo 2nd organization $2
echo 1st organization $3
echo printing permissions
ls -l
echo changing files permissions of login.html
chmod u-rwx login.html