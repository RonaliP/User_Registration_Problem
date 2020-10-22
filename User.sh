#!/bin/bash

echo "THIS PROGRAM WILL CONTAIN CODES FOR VALIDATING EACH ENTRY OF USER REGISTRATION"

shopt -s extglob

regex="^([A-Z]{1}[a-zA-Z]{2,})+\s+([A-Z]{1}[a-zA-Z]{2,})+$"


read -p "ENTER NAME=" name

if [[ $name =~ $regex ]]
then
	echo "VALID NAME"
else
	echo "INVALID INPUT"
fi


regex1="^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9])+\.)+([a-zA-Z])+$"

read -p "ENTER USER EMAIL" mail
if [[ $mail =~ $regex1 ]]
then
        echo "VALID"
else
        echo "INVALID EMAIL"
fi

regex2="^([91]{2})+\s+([^0]{1}[0-9]{9})"
read -p "ENTER USER PHONE NUMBER" num
if [[ $mail =~ $regex2 ]]
then
        echo "VALID"
else
        echo "INVALID Number"
fi





