#!bin/bash
echo "==========SMART PASSWORD GENERATER=========="
sleep 2
echo "Choose an option:"
echo "1) Generate password from your name"
echo "2) Generate completely random password"
read OPTION
sleep 2
echo "Enter password length:"
read PASS_LENGTH

#Check number validation
if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]];
then
	echo "Please enter only number"
	exit 1
fi


LOWER="abcdefghijklmnopqrstuvwxyz"
UPPER="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
NUMBERS="0123456789"
SYMBOLS="!@#$%^&*()_+"
ALL_RANDOM="$LOWER $UPPER $NUMBERS $SYMBOLS"
echo "------------------------"
#OPTION 1 Name base password
if [ "$OPTION" -eq 1 ]; then
	echo "Enter the your name:"
	read NAME

	NAME_LOWER=$(echo "$NAME" | tr 'A-Z' 'a-z')
	NAME_UPPER=$(echo "$NAME" | tr 'a-z' 'A-Z')

	echo "Generated Passwords:"

	for i in 1 2 3
	do 
		RANDOM_PART=$(tr -dc "$NUMBERS$STMBOLS" < /dev/urandom | head -c 4)
		PASSWORD=$(echo "$NAME_LOWER$NAME_UPPER$RANDOM_PART" | head -c $PASS_LENGTH)
		echo "$PASSWORD"
	done

#OPTION 2 fully Random password
elif [ "$OPTION" -eq 2 ]; then
	echo "Generate Random password:"
	for i in 1 2 3
	do 
		PASSWORD=$(tr -dc "$ALL_RANDOM" < /dev/urandom | head -c $PASS_LENGTH)
		echo "$PASSWORD"
	done
else
	echo "Invalid option seleced"

fi


