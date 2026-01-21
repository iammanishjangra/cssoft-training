#$!/bin/bash

<< PersonalDetail

Name:		Manish Kumar
Course:		DevOps Engineer
Gmail:		manishjangra97@gmail.com
LinkedIn:	https://www.linkedin.com/in/manishjangra97
GitHub:		https://www.github.com/iammanishjangra

PersonalDetail

WORKDIR=~/Desktop/SampleFolder

read -p "Aapko Folder Check Karna Hai Ya File (small-letter) : " CHECKLIST
if [[ ${CHECKLIST} == "folder" ]]; then
	read -p "Enter Folder Name: " FOLDER
	if [[ -d ${WORKDIR}/${FOLDER} ]]; then
	echo "Folder Exist"
	else
		echo "Folder No Exist"
	fi
elif [[ ${CHECKLIST} == "file" ]]; then
	read -p "Enter File Name with txt Extension: " FILE
		if [[ -f ${WORKDIR}/${FILE} ]]; then
		echo "File Exist"
		read -p "Kya Aap Us File Ko Open Karna Cahte Hai (y/n)" choose
		if [[ ${choose} == "y" && -r ${WORKDIR}/${FILE} ]]; then
			cat ${WORKDIR}/${FILE}
		else
			echo "Read Permission Nahi Hai."
		fi
		else
			echo "File Not Exist"
		fi
fi
