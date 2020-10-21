#! /bin/bash

#Author: Ankita Angane
#User Registration Program and validation using regex

shopt -s extglob

regex="^[A-Z]{1}[a-z]{2,}"
#regexMail="^[A-Za-z0-9]+([._+-][A-Za-z0-9]+)*@[A-Za-z0-9]+.[A-Za-z]{2,4}([.][A-Za-z]{2})$"
#regexMail="^([A-Za-z0-9+._-]*[A-Za-z0-9])+@[A-Za-z0-9]+.[A-Za-z]{2,}$"
regexMail="^([A-Za-z0-9+._-]*[A-Za-z0-9])+@[A-Za-z0-9]+[.A-Za-z]*[.A-Za-z]$"

read -p "Enter a first name - " name

if [[ $name =~ $regex ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
fi

echo ""
read -p "Enter a last name - " surname

if [[ $surname =~ $regex ]]
then
        echo "Valid Surname"
else
        echo "Invalid Surname"
fi

echo ""
read -p "Enter a Email Address - " mail

if [[ $mail =~ $regexMail ]]
then
        echo "Valid Mail"
else
        echo "Invalid Mail"
fi
