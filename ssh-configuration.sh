#!/bin/bash

<< Workflow

1. 	Make SSH Key
2. 	Send SSH Key To Server IP for Authentication
2.1	Connection using SCP with Server
3. 	Make A Folder and .sh File in Local Machine
4. 	Send Folder to Server
5. 	Give Execution Permission to File
6. 	Final Execute File in Server

Workflow

SSH_FILE_DIR=~/.ssh
PUBLIC_FILE=${SSH_FILE_DIR}/${FILE_NAME}.pub
FOLDER_DIR=~/Desktop/ServerConfig

echo "===================================="
echo "SSH KEY GENERATING STEPS"
echo "===================================="

echo "Making A SSH Key Using ssh-keygen"
read -p "Enter SSH File Name: " FILE_NAME
ssh-keygen -t ed25519 -f ${SSH_FILE_DIR}/${FILE_NAME} -N ""
echo ""
echo "Key Generated Successfully"

echo "===================================="
echo "SEND SSH KEY TO SERVER IP"
echo "===================================="
echo ""
read -p "Enter SERVER User Name: " SERVER_USER
read -p "Enter SERVER IP (192.168.x.x): " SERVER_IP
echo "Copying SSH KEY to Server..."
ssh-copy-id -i ${SSH_FILE_DIR}/${FILE_NAME}.pub ${SERVER_USER}@${SERVER_IP}
echo "SSH Key Successfully Transfered to Host Address"
echo ""
echo "===================================="
echo "MAKE A FOLDER AND FILE"
echo "===================================="
# read -p "Enter Folder Name: " FOLDER_NAME
mkdir -p ~/Desktop/ServerConfig
echo "Setup.txt File Generated In Folder"
if [[ -f ${FOLDER_DIR}/ServerSetup.sh ]]; 
then
	echo "File Already Exist in ${FOLDER_DIR}"
	read -p "If you want Edit Existed file (y/n): " CHOOSE_OPTION
	if [[ ${CHOOSE_OPTION} == "y" || ${CHOOSE_OPTION} == "Y" ]];
	then
		read -p "Your want to Overwrite in file (y/n): " OVERWRITE
		if [[ ${OVERWRITE} == "y" || ${OVERWRITE} == "Y" ]]; 
		then
			echo "Enter your commands. Press Enter then Ctrl+D to finish."
			cat > "${FOLDER_DIR}/ServerSetup.sh"
		else
			echo "Adding Commands in Existing File"
			echo "Enter commands. Press Enter then Ctrl+D to finish"
			cat >> "${FOLDER_DIR}/ServerSetup.sh"
		fi
	fi
else
	echo "Which Commands want to run in Server?"
	echo "--- Type your commands. Press Enter then Ctrl+D to finish ---"
	cat > "${FOLDER_DIR}/ServerSetup.sh"
	echo -e "\nServerSetup.txt File Generated In Folder"
fi
echo "FILE GENERATED AND STORE IN FOLDER"
echo ""
echo "====================================="
echo "CONNECTION USING SCP FILE TRANSFER"
echo "====================================="
echo ""
scp -r ${FOLDER_DIR} ${SERVER_USER}@${SERVER_IP}:/home/${SERVER_USER}
echo ""
echo "FILE & FOLDER TRANSFER DONE"
echo "GIVE PERMISSION TO FILE FOR EXECUTE"
ssh -t ${SERVER_USER}@${SERVER_IP} "chmod +x ~/ServerConfig/ServerSetup.sh && bash ~/ServerConfig/ServerSetup.sh"
echo "\nServer Setup is Done !"
