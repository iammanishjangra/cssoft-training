#!/bin/bash

# Colours
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


# WORKING DIRECTORY
WORK_DIR=~/Desktop/cssoft-training/linux-assignment
SCREENSHOT=${WORK_DIR}/screenshots

# TASK 1: NAVIGATION $ DIRECTORIES

task_1() {
clear
echo "========================================================================="
echo "                      NAVIGATION & DIRECTORIES"
echo "========================================================================="
echo ""
echo "[+] CHECK CURRENT DIRECTORY [+]"
echo ""
echo -e "[ ${GREEN}$(pwd)${NC} ]"
echo ""
echo "[+] LIST ROOT DIRECTORY [+]"
echo ""
ls /
echo ""
echo "[+] GO TO HOME DIRECTORY [+]"
echo ""
echo "Entered in Home Directory $(cd ~)"
echo ""
echo "[+] CREATE A NEW FOLDER IN HOME DIRECTORY [+]"
mkdir -p ~/devops_practice
echo ""
echo -e "Created Folder is: ${GREEN}$(find ~/devops_practice)${NC}"
echo ""
echo -e "Entering in ${GREEN}devops_practice${NC} Folder"
echo ""
cd ~/devops_practice
echo "[+] MAKE 3 FILES IN devops_practice FOLDER"
touch file1.txt file2.txt file3.txt
echo -e "File Created: ${GREEN}$(ls ~/devops_practice)${NC}"
echo ""
cd ~	# Return to Home Directory
echo "========================================================================="
echo "                  TASK 1 IS COMPLETED ( wait 3 Seconds )"
echo "========================================================================="
echo ""
sleep 3
<< PersonalDetail
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"
PersonalDetail

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task1_Navigation.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task1_Navigation.png

# Generating TXT File
echo "[+] GENERATING FILE TASK 1 [+]"
echo "=========================================================================
               TASK 1:  NAVIGATION AND DIRECTORIES
=========================================================================

[+] CHECK CURRENT DIRECTORY [+]

> COMMAND:- pwd
> COMMAND OVERVIEW: pwd stands for Present Working Directory. Its show our current location in terminal, which directory using when we enter this cmnd.
> RESULT:- /home/cssoft/Desktop/cssoft-training/linux-assignment

[+] LIST ROOT DIRECTORIES [+]

> COMMAND:- ls /
> COMMAND OVERVIEW: ls stands for List Files and Directories. And / (slash) use for Root Directory.
> RESULT:-
	bin	dev	lib64	mnt	run	srv	var
	bin.usr-is-merged	etc	lib.usr-is-merged	opt	sbin	sys
	boot	home	lost+found	proc	sbin.usr-is-merged	tmp
	cdrom	lib	media	root	snap	usr

[+] GOTO HOME DIRECTORY [+]

> COMMAND:- cd ~ or cd $HOME
> COMMAND OVERVIEW:- ~ (tiled) stand for Goto Direct logged-in User Home Directory, and $HOME is system defined variable. Its also use for Terminal redirect to Home Directory.
> RESULT:- No Output Appear When we Redirect from One to Another Directory. We can Check in Terminal Command Prompt (cssoft@ubuntu:~$). Here ~ indicate Home Directory

[+] CREATE FOLDER devops_practice [+]

> COMMAND:- mkdir -p devops_practice
> COMMAND OVERVIEW:- mkdir stands for Make Directory and -p flag use for Parents Folder Create Automatically. Mean without -p flag multi folder creatation in one command is not possible but when we use this All Parents and child folder automatically Created.
> RESULT:- No Output Appear when we Create Directory. We can check using ls command for list all file and directories.

[+] CREATE 3 FILES INSIDE devops_practice FOLDER [+]

> COMMAND:- touch file1.txt file2.txt file3.txt
> COMMAND OVERVIEW:- touch Use for making Empty Files. When we enter multi names with using space, then  touch commands generate separate files for all .
> RESULT: No Output Appear When Create Files. We can check using ls Command.

" > ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
clear
}

# TASK 2: FILE OPERATIONS

task_2() {
clear
echo "========================================================================="
echo "                     TASK 2: FILE OPERATIONS"
echo "========================================================================="
echo ""
echo "[+] CREATE LOGS FOLDER IN HOME DIRECTORY [+]"
echo ""
cd ~
mkdir -p ~/logs
echo -e "Created Folder is: ${GREEN}$(cat ~/logs)${NC}"
echo ""
echo "[+] MOVE FILE INTO LOGS [+]"
mv ~/devops_practice/file1.txt ~/logs/
echo ""
echo -e "FILE MOVED: ${GREEN}$(ls ~/logs)${NC}"
echo ""
echo "[+] RENAME FILE NAME [+]"
echo ""
mv ~/devops_practice/file2.txt ~/devops_practice/config.txt
echo -e "File Renamed ${RED}file2.txt${NC} into ${GREEN}config.txt${NC}"
echo ""
echo -e "[+] COPY FILE ${RED}file3.txt${NC} INTO ${GREEN}backup.txt${NC} [+]"
cp ~/devops_practice/file3.txt  ~/devops_practice/backup.txt
echo ""
echo -e "File Copied: ${GREEN}$(find ~/devops_practice/backup.txt)${NC}"
echo ""
echo "[+] DELETE LOGS FOLDER [+]"
echo ""
echo -e "${GREEN}$(rm -v -r ~/logs)${NC}"
echo ""
echo "Logs File/Directories Removed"
echo ""
echo "========================================================================="
echo "                       TASK 2 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3

echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task2_FileOperations.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task2_FileOperations.png
clear
}

# TASK 3: FILE CONTENT

task_3() {
clear
echo "========================================================================="
echo "                     TASK 3: FILE CONTENT"
echo "========================================================================="
echo ""
echo -e "[+] WRITE SAMPLE TEXT IN ${GREEN}config.txt${NC} FILE"
echo ""
echo "Writing...."
echo -e "Hello Connections!
My name is Manish Kumar from Hisar, Haryana.
I have completed my Higher Secondary Schooling.
I am learning DevOps Engineering in CS Soft Solutions (Mohali)" > ~/devops_practice/config.txt
echo ""
echo -e "${GREEN}config.txt${NC} file Modified."
echo ""
echo "[+] DISPLAY CONTENT OF SAME FILE"
echo ""
echo -e "${GREEN}$(cat ~/devops_practice/config.txt)${NC}"
echo ""
echo "[+] SHOW FIRST LINE AND LAST LINE [+]"
echo ""
echo -e "First Line is: ${GREEN}$(head -n 1 ~/devops_practice/config.txt)${NC}"
echo -e "Last Line is: ${GREEN}$(tail -n 1 ~/devops_practice/config.txt)${NC}"
echo ""
echo "========================================================================="
echo "                 TASK 3 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task3_FileContent.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task3_FileContent.png
clear
}

# Task 4: PERMISSIONS

task_4() {
clear
echo "========================================================================="
echo "                    TASK 4: PERMISSIONS"
echo "========================================================================="
echo ""
echo -e "[+] CHECK PERMISSION OF ${RED}config.txt${NC} [+]"
echo ""
cd ~/devops_practice
echo -e "> ${RED}config.txt${NC} File Permission is: ${GREEN}$(ls -l | grep config.txt | awk '{print $1}')${NC}"
echo ""
echo -e "[+] ALLOW READ AND WRITE PERMISSION OF ${RED}config.txt${NC} [+]"
echo ""
echo -e "> Previous Permission is: ${GREEN}$(ls -l | grep config.txt | awk '{print $1}')${NC}"
chmod 600 ./config.txt
echo -e "> After Modify Permission is: ${GREEN}$(ls -l | grep config.txt | awk '{print $1}')${NC}"
echo ""
echo "========================================================================="
echo "                 TASK 4 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task4_Permissions.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task4_Permissions.png
clear
}

# Task 5: SEARCH $ FIND

task_5() {
clear
echo "========================================================================="
echo "                       TASK 5: SEARCH & FIND"
echo "========================================================================="
echo ""
echo -e "[+] SEARCH ${BLUE}DevOps${NC} WORD IN ${RED}config.txt${NC} [+]"
echo ""
cd ~/devops_practice
echo -e "Searched Result: ${GREEN}$(grep -o DevOps ./config.txt)${NC}"
echo ""
echo "========================================================================="
echo "                 TASK 5 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task5_SearchFind.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task5_SearchFind.png
clear
}

# Task 6: System Information
task_6() {
clear
echo "========================================================================="
echo "                       TASK 6: SYSTEM INFORMATION"
echo "========================================================================="
echo ""
echo -e "[+] CHECK USERNAME ${RED}(username)${NC} [+]"
echo ""
echo -e "Username is: ${GREEN}$(whoami)${NC}"
echo ""
echo -e "[+] CHECK HOSTNAME ${RED}(hostname)${NC} [+]"
echo ""
echo -e "Hostname is: ${GREEN}$(hostname)${NC}"
echo ""
echo -e "[+] TOP 5 RUNNING PROCESS [+]"
echo ""
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -5
echo ""
echo "[+] DISK USAGES [+]"
echo ""
df -h | xargs | awk '{print "Total/Used: "$9" / "$10" ("$12" used)"}'
df -h --total | grep 'total'
echo ""
echo "[+] MEMORY USAGES [+]"
echo ""
free -h
echo ""
echo "========================================================================="
echo "                 TASK 6 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task6_SystemInformation.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task6_SystemInformation.png
}

# Task 7: Archive & Compress

task_7() {
clear
echo "========================================================================="
echo "                       TASK 7: ARCHIVE & COMPRESS"
echo "========================================================================="
echo ""
echo -e "[+] CREATE TAR ARCHIVE OF ${RED}devops_practice${NC} FOLDER [+]"
echo ""
cd ~
echo -e "[[ Archiving Using ${RED}tar -cvf backup.tar ./devops_practice${NC} Command ]]"
echo "Archiving ...."
echo -e "${GREEN}$(tar -cvf backup.tar ./devops_practice)${NC}"
echo ""
echo -e "Folder Archived: ${GREEN}$(ls backup.tar)${NC}"
echo ""
echo "[+] EXTRACT COMPRESS ARCHIVE [+]"
echo ""
echo -e "[[ Extracting Using ${RED}tar -xvf backup.tar -C ~/Desktop${NC} Command ]]"
echo "Extracting ...."
echo -e "${GREEN}$(tar -xvf backup.tar -C ~/Desktop)${NC}"
echo ""
echo -e "Archive Extracted: ${GREEN}$(ls -d ~/Desktop/devops_practice/)${NC}"
echo ""
echo "========================================================================="
echo "                 TASK 7 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"

# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task7_ArchiveExtract.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task7_ArchiveExtract.png
clear
}

#Task 8: Networking
task_8() {
clear
echo "========================================================================="
echo "                          TASK 8: NETWORKING"
echo "========================================================================="
echo ""
echo "[+] MY IP ADDRESS [+]"
echo ""
echo -e "IP Address is: ${GREEN}$(hostname -I | awk '{print $1}')${NC}"
echo ""
echo "[+] PING GOOGLE ( ONLY 5 PACKETS )"
echo ""
echo -e "${GREEN}$(ping -c 5 www.google.com)${NC}"
echo ""
echo "[+] CHECK DNS RESOLUTION"
echo ""
echo -e "${GREEN}$(nslookup www.google.com)${NC}"
echo ""
<< PublicIP
echo "{+] PUBLIC IP ADDRESS [+]"
echo ""
curl ifconfig.me
echo ""
echo ""
PublicIP
echo "========================================================================="
echo "                 TASK 8 IS COMPLETED ( wait 3 seconds )"
echo "========================================================================="
echo ""
sleep 3
<< PersonalInfo
echo -e "Name:		${GREEN}Manish Kumar${NC}
Course:         ${GREEN}DevOps Engineer${NC}
LinkedIn:       ${BLUE}https://www.linkedin.com/in/manishjangra97${NC}
GitHub:         ${BLUE}https://www.github.com/iammanishjangra97${NC}"
PersonalInfo
# Taking Screenshot
mkdir -p ${WORK_DIR}/screenshots
gnome-screenshot -w -b -f ${SCREENSHOT}/Task8_Networking.png
sleep 1
echo ""

# Preview Screenshot
feh ${SCREENSHOT}/Task8_Networking.png

read -p "Want to Remove All Unnecessary Files (y/n)" CHOOSE
if [[ ${CHOOSE} == 'y' || ${CHOOSE} == 'Y' ]];
then
	echo -e "Removing ${GREEN}devops_practice${NC}, ${GREEN}Screenshots${NC}, ${GREEN}Archive Files${NC}"
	rm -rf ~/devops_practice ~/backup.tar ~/Desktop/devops_practice ${WORK_DIR}/screenshots
	echo "All Files Removed "
else
	echo "No Issue ! Do Manually :D"
fi
sleep 2
clear
}

# Menu Setup
PS3="Select One Option: "
options=(
	"Navigation & Directories"
	"File Operations"
	"File Content"
	"Permissions"
	"Search & Find"
	"System Information"
	"Archive & Compress"
	"Networking"
	"Exit"
)

# Loop
while true;
do
	clear
	echo ""
	echo -e "========================================================================="
	echo -e "                        LINUX ASSIGNMENT MENU"
	echo -e "========================================================================="
	echo ""
	select opt in "${options[@]}"
	do
		case $opt in
			"Navigation & Directories")
				clear
				task_1
				break
				;;
			"File Operations")
				clear
				task_2
				break
				;;
			"File Content")
				task_3
				break
				;;
			"Permissions")
				task_4
				break
				;;
			"Search & Find")
				task_5
				break
				;;
			"System Information")
				task_6
				break
				;;
			"Archive & Compress")
				task_7
				break
				;;
			"Networking")
				task_8
				break
				;;
			"Exit")
				echo ""
				echo "/////////////////////////////////////////////////////////////////////"
				echo "////////////////// BYE BYE CONNECTIONS ( MANISH ) ///////////////////"
				echo "/////////////////////////////////////////////////////////////////////"
				sleep 1
				echo ""
				exit 0
				;;
			"*")
				echo "Invalid Option"
				break
				;;
		esac
	done
done
