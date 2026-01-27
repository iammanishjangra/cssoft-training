#!/bin/bash

<< PersonalDetail

Name:		Manish Kumar
Email:		manishjangra97@gmail.com
Course:		DevOps Engineer
LinkedIn:	https://www.linkedin.com/in/manishjangra97
GitHub:		https://www.github.com/iammanishjangra

PersonalDetail

read -p "Enter username: " username
sudo groupadd $username
echo ""
echo "==> Group Created"
sudo useradd -g $username -m -s /bin/bash $username # -m for making home directory and -s for Default Shell
echo ""
echo "==> User Created"
echo ""
echo "==> User Added in Group"
echo ""
read -s -p "Enter Password: " password # -s Silent Flag for hide password in terminal and -p for Prompt
passwd $username
echo ""
echo "==> Password Created"
read -p "Want to Check User Created or Not (y/n): " choose

if [[ $choose == "y" || $choose == "Y" ]]; then
	echo ""
	grep $username /etc/passwd
else
	echo "You can check it manually using this command."
	echo ""
	echo "Enter in Terminal:: grep $username /etc/passwd"
fi
echo ""
echo "Happy Ending :D"
