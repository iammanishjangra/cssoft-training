#!/bin/bash

<< PersonalDetail

Name: 		Manish Kumar
Course:		DevOps Engineer
Gmail:		manishjangra97@gmail.com
LinkedIn:	https://www.linkedin.com/in/manishjangra97
GitHub:		https://www.github.com/iammanishjangra

PersonalDetail

read -p "Enter Folder Name: " FOLDER_NAME
echo "Creating Folder..."
mkdir -p ~/Desktop/${FOLDER_NAME}
echo "Entering in Folder ${FOLDER_NAME}"
cd ~/Desktop/${FOLDER_NAME}
read -p "Enter Message to Save in Txt File: " MESSAGE
read -p "Enter File Name: " FILE_NAME
echo "${MESSAGE}" > ~/Desktop/${FOLDER_NAME}/${FILE_NAME}.txt
echo ""
echo "Showing Entered Message"
echo ""
cat ~/Desktop/${FOLDER_NAME}/${FILE_NAME}.txt
echo ""
read -p "Kya Aap Extra Message Dena Cahte Hai (y/n): " CHOOSE
if [[ ${CHOOSE} == "y" || ${CHOOSE} == "Y" ]];then
	read -p "Enter Second Message Here: " SECOND_MESSAGE
	echo "$SECOND_MESSAGE" >> ~/Desktop/${FOLDER_NAME}/${FILE_NAME}.txt
else
	echo "Bye Bye"
fi
read -p "Kya Aap Entered Message Ko Dekhna Cahte Ho (y/n): " CHOOSE_TWO
if [[ ${CHOOSE_TWO} == "y" || ${CHOOSE_TWO} == "Y"} ]];then
	cat ~/Desktop/${FOLDER_NAME}/${FILE_NAME}.txt
else
	echo "Bye Bye"
fi
