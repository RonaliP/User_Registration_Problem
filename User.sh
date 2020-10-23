#!/bin/bash

echo "THIS PROGRAM WILL CONTAIN CODES FOR VALIDATING EACH ENTRY OF USER REGISTRATION"

shopt -s extglob

regex="^([A-Z]{1}[a-zA-Z]{2,})+[]+([A-Z]{1}[a-zA-Z]{2,})+$"


read -p "ENTER NAME=" name
read -p "ENTER USER EMAIL" mail
read -p "ENTER USER PHONE NUMBER" num
read -p "enter a password: " s

if [[ $name =~ $regex ]]
then
	echo "VALID NAME"
else
	echo "INVALID INPUT"
fi


regex1="^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9])+\.)+([a-zA-Z])+$"


if [[ $mail =~ $regex1 ]]
then
        echo "VALID"
else
        echo "INVALID EMAIL"
fi

regex2="^([0-9]{2})+[]+([^0]{1}[0-9]{9})+$"

if [[ $mail =~ $regex2 ]]
then
        echo "VALID"
else
        echo "INVALID Number"
fi

if [[ "${#s}" -ge 8 && "$s" == *[A-Z]* && "$s" == *[a-z]* && "$s" == *[0-9]* && "$s" == *[!@*#$%^_-]* ]]
then
   echo "correct password"
else
   echo "wrong password"
fi







