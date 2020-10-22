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


shopt -s extglob

regex="^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9])+\.)+([a-zA-Z])+$"

read -p "ENTER USER EMAIL" mail
if [[ $mail =~ $regex ]]
then
        echo "VALID"
else
        echo "INVALID EMAIL"
fi





