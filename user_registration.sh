#! /bin/bash

#Author: Ankita Angane
#User Registration Program and validation using regex

regex="^[A-Z]{1}[a-z]{2,}"

read -p "Enter a valid first name - " name
if [[ $name =~ $regex ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
fi
