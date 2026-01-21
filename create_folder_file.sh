#!/bin/bash

<< PersonalDetail

Name: 		Manish Kumar
Course:		DevOps Engineer
Gmail:		manishjangra97@gmail.com
LinkedIn:	https://www.linkedin.com/in/manishjangra97
GitHub:		https://www.github.com/iammanishjangra

PersonalDetail

MAIN_DIR=~/Desktop				# Define Variable
FOLDER_DIR=${MAIN_DIR}/${FOLDER_NAME}		# Define Variable
FILE_DIR=${FOLDER_DIR}/${FILE_NAME}.txt		# Define Variable

read -p "Enter Folder Name: " FOLDER_NAME
echo "Creating Folder..."
mkdir -p ${MAIN_DIR}/${FOLDER_NAME}
echo "Folder Name is : ${FOLDER_NAME}"
cd ${FOLDER_DIR}
read -p "Enter Message to Save in Txt File: " MESSAGE
read -p "Enter File Name: " FILE_NAME
echo "${MESSAGE}" > ${FOLDER_DIR}/${FILE_NAME}.txt
echo ""
echo "Showing Entered Message"
echo ""
cat ${FILE_DIR}
echo ""
read -p "Kya Aap Extra Message Dena Cahte Hai (y/n): " CHOOSE
if [[ ${CHOOSE} == "y" || ${CHOOSE} == "Y" ]];
then
	read -p "Enter Second Message Here: " SECOND_MESSAGE
	echo "$SECOND_MESSAGE" >> ${FILE_DIR}
else
	echo "Bye Bye"
fi
read -p "Kya Aap Entered Message Ko Dekhna Cahte Ho (y/n): " CHOOSE_TWO
if [[ ${CHOOSE_TWO} == "y" || ${CHOOSE_TWO} == "Y"} ]];
then
	cat ${FILE_DIR}
else
	echo "Bye Bye"
fi
