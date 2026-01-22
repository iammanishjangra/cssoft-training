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
FOLDER_DIR=~/Desktop/Folder1

echo "===================================="
echo "SSH KEY GENERATING STEPS"
echo "===================================="

echo "Make SSH Folder in Local Machine"
sudo mkdir -p ${SSH_FILE_DIR}

echo "Folder Created Done"

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
ssh-copy-id -o StrictHostKeyChecking=no -i ${SSH_FILE_DIR}/${FILE_NAME}.pub ${SERVER_USER}@${SERVER_IP}
echo "SSH Key Successfully Transfered to Host Address"
echo ""
echo "===================================="
echo "MAKE A FOLDER AND FILE"
echo "===================================="
# read -p "Enter Folder Name: " FOLDER_NAME
mkdir -p ~/Desktop/Folder1
echo "Setup.txt File Generated In Folder"
echo -e "sudo apt update \nsudo apt install nginx -y" >> ${FOLDER_DIR}/setup.sh
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
ssh -t ${SERVER_USER}@${SERVER_IP} "chmod +x ~/Folder1/setup.sh && bash ~/Folder1/setup.sh"
