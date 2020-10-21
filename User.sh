echo "THIS PROGRAM WILL CONTAIN CODES FOR VALIDATING EACH ENTRY OF USER REGISTRATION"

shopt -s extglob

Firstname_regex="^[A-Z]{1}[a-zA-Z]{2,}$"

read -p "ENTER USER_FIRST_NAME=" name

if [[ $name =~ $Firstname_regex ]]
then
	echo "VALID"
else
	echo "INVALID INPUT"
fi
