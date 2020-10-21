#! /bin/bash

#Author: Ankita Angane
#User Registration Program and validation using regex

regex="^[A-Z]{1}[a-z]{2,}"

read -p "Enter a first name - " name

if [[ $name =~ $regex ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
fi

read -p "Enter a last name - " surname

if [[ $surname =~ $regex ]]
then
        echo "Valid Surname"
else
        echo "Invalid Surname"
fi

