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
echo "                    TASK 1: NAVIGATION & DIRECTORIES"
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

# Generating TXT File
echo "[+] GENERATING FILE TASK 2 [+]"
echo "
=========================================================================
                    TASK 2:  FILE OPERATIONS
=========================================================================

[+] CREATE LOGS FOLDER [+]

> COMMAND:- mkdir ~/logs
> COMMAND OVERVIEW:- Creating Folder in Home Directory using mkdir Command.
> OUTPUT:- No Output Appear While Execute this command. Its run on background.

[+] MOVE file1.txt INTO Logs FOLDER [+]

> COMMAND:- mv ~/devops_practice/file1.txt ~/logs
> COMMAND OVERVIEW:- mv Command stands for Moving any File and Directories. Here we Move file.txt File from devops_practice Directory to Logs Directory.
> OUTPUT:- No Output Appear While Execute this Command. Its run on Background.

[+] RENAME file2.txt to config.txt [+]

> COMMAND:- mv ~/devops_practice/file2.txt ~/devops_practice/config.txt
> COMMAND OVERVIEW:- We also Used mv Command for Rename any Files and Directories.
> OUTPUT:- No Output Appear While Execute this Command. Its run on Background.

[+] COPY file3.txt TO backup.txt FILE [+]

> COMMAND:- cp ~/devops_practice/file3.txt ~/devops_practice/backup.txt
> COMMAND OVERVIEW:- cp stands for COPY any File and Directories. cp Commands make a Same Carbon copy of File or Directories.
> OUTPUT:- No Output Appear While Execute this command. Its run on Background.

[+] DELETE LOGS FOLDER [+]

> COMMAND:- rm -rv ~/logs
> COMMAND OVERVIEW:- rm stands for Remove any File and Directory. -rv Flags work are different. When Folder is empty, then we can't use any addtional flags but when folder is not empty then we must use -r (Recursive mode) flag for delete Directory + Files. -v (verbose) show live action on terminal which file and folder deleted.
> OUTPUT:-
	removed 'logs/file2.txt'
	removed directory 'logs/'

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
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
I am learning DevOps Engineering in CS Soft Solutions, Mohali" > ~/devops_practice/config.txt
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

# Generating TXT File
echo "[+] GENERATING FILE TASK 3 [+]"
echo "
=========================================================================
                      TASK 3: FILE CONTENT
=========================================================================

[+] WRITE SAMPLE TEXT IN config.txt FILE [+]

> COMMAND:- echo 'Hello Connections!
My name is Manish Kumar from Hisar, Haryana.
I have completed my Higher Secondary Schooling.
I am learning DevOps Engineering in CS Soft Solutions, Mohali' > > ~/devops_practice/config.txt
> COMMAND OVERVIEW:- echo command use for print any text but here we use for append in config.txt file. > > used for append the test in target file.
> OUTPUT:- Run on Background.

[+] DISPLAY CONTENT [+]

> COMMAND:- cat ~/devops_practice/config.txt
> COMMAND OVERVIEW:- cat stands for print files content in terminal.
> OUTPUT:-
	Hello Connections!
	My name is Manish Kumar from Hisar, Haryana.
	I have completed my Higher Secondary Schooling.
	I am learning DevOps Engineering in CS Soft Solutions, Mohali

[+] SHOW FIRST AND LAST LINE FROM config.txt FILE [+]

> COMMAND:- 'head -n 1 ~/devops_practice/config.txt' 'For Print Top Lines from File'
	    'tail -n 1 ~/devops_practice/config.txt' 'For Print Bottom Lines from File'
> COMMAND OVERVIEW:- head stands for print top lines from any files and tail stands for print bottom lines from any files.
> OUTPUT:-
	When we run Head Command then result is:- Hello Connections!
	When we run tail Command then result is:- I am learning DevOps Engineering in CS Soft Solutions, Mohali

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
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
# Generating TXT File
echo "[+] GENERATING FILE TASK 4 [+]"
echo "

=========================================================================
                        TASK 4: PERMISSIONS
=========================================================================

[+] CHECK PERMISSIONS OF config.txt [+]

> COMMAND:- ls -l ~/devops_practice/config.txt
> COMMAND OVERVIEW:- ls use for List and -l flags Use for Print more information about config.txt File, like permissions, pid, gid, size, name etc.
> OUTPUT:- -rw-rw-r-- 1 cssoft cssoft 174 Jan 25 18:01 /home/cssoft/devops_practice/config.txt

[+] ALLOW ONLY READ AND WRITE TO OWNER

> COMMAND:- chmod 600 ~/devops_practice/config.txt
> COMMAND OVERVIEW:- chmod stands for Change Mode. Using this commands we can change the Read | Write | Execute Permission of All Type of Files and Directories.
> OUTPUT:- Run on Background but when we check this its show '-rw-------' permission.

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
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
echo -e "[+] FIND ${RED}config.txt${NC} FILE"
echo ""
echo -e "File Founded: ${GREEN}$(find ~/devops_practice -name "config.txt")${NC}"
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
# Generating TXT File
echo "[+] GENERATING FILE TASK 5 [+]"
echo "
=========================================================================
                          TASK 5: SEARCH & FIND
=========================================================================

[+] SEARCH 'DevOps' WORD IN config.txt

> COMMAND:- grep -o DevOps ./config.txt
> COMMAND OVERVIEW:- grep used for Search Text Content from File content. -o flag use for Only this text print in terminal.
> OUTPUT:- DevOps

[+] FIND config.txt FILE IN SYSTEM

> COMMAND:- find ~/devops_practice -name 'config.txt'
> COMMAND OVERVIEW:- find command use for search any file and directory from system, here we decide the path for searching criteria.
> OUTPUT:- /home/cssoft/devops_practice/config.txt

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
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

# Generating TXT File
echo "[+] GENERATING FILE TASK 6 [+]"
echo "
=========================================================================
                      TASK 6: SYSTEM INFORMATION
=========================================================================

[+] CHECK USERNAME

> COMMAND:- whoami
> COMMAND OVEVIEW:- whoami used for print Username in Terminal
> OUTPUT:- cssoft

[+] CHECK HOSTNAME [+]

> COMMAND:- hostname
> COMMAND OVERVIEW:- hostname used for print Hostname in Terminal
> OUTPUT:- ubuntu

[+] RUNNING TOP 5 PROCESS

> COMMAND:- ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -5
> COMMAND OVERVIEW:- ps stands for process status. This command use for check running process in our machine.
> OUTPUT:-
	    PID    PPID CMD                         %MEM %CPU
	  14643    9965 ps -eo pid,ppid,cmd,%mem,%c  0.0  700
	  14469    4451 gjs /usr/share/gnome-shell/  0.8  3.6
	   4451    4131 /usr/bin/gnome-shell         4.3  2.8
	   9682    4131 /usr/libexec/gnome-terminal  0.8  0.9

[+] DISK USAGES

> COMMAND:- df -h
> COMMAND:- df stands for Disk Free Status and also give all information about Disk Usages.
> OUTPUT:-
	Filesystem      Size  Used Avail Use% Mounted on
	tmpfs           779M  2.6M  777M   1% /run
	/dev/sdb3       223G   78G  133G  37% /
	tmpfs           3.9G   45M  3.8G   2% /dev/shm
	tmpfs           5.0M  8.0K  5.0M   1% /run/lock
	efivarfs        118K   75K   39K  66% /sys/firmware/efi/efivars
	tmpfs           3.9G     0  3.9G   0% /run/qemu
	/dev/sdb1       489M  6.2M  482M   2% /boot/efi
	tmpfs           779M  116K  779M   1% /run/user/1000
	tmpfs           779M  164K  779M   1% /run/user/1001

[+] MEMORY USAGES

> COMMAND:- free -h
> COMMAND OVERVIEW:- free command stands for free memory status.
> OUTPUT:-
	               total        used        free      shared  buff/cache   available
	Mem:           7.6Gi       3.9Gi       2.0Gi       943Mi       3.0Gi       3.7Gi
	Swap:           11Gi          0B        11Gi

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
clear
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
# Generating TXT File
echo "[+] GENERATING FILE TASK 7 [+]"
echo "

=========================================================================
                      TASK 7: ARCHIVE & COMPRESS
=========================================================================

[+] CREATE TAR ARCHIVE OF devops_practice FOLDER [+]

> COMMAND:- tar -cvf backup.tar ./devops_practice
> COMMAND OVERVIEW:- tar command use for make a Compress Archive of Any Single file and group of file and directories.
		-c for Create
		-v for verbose
		-f for file
> OUTPUT:-
	./devops_practice/
	./devops_practice/backup.txt
	./devops_practice/backup.tar
	./devops_practice/file3.txt
	./devops_practice/config.txt

[+] EXTRACT ARCHIVE TAR FILE [+]

> COMMAND:- tar -xvf backup.tar -C ~/Desktop
> COMMAND OVERVIEW:- Using of tar command we also extract any compress files. but we use different flags
		-x for Extract
		-v for verbose
		-f for file
		-C for File Output Destination

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2
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
echo -e "${GREEN}$(nslookup google.com)${NC}"
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

# Generating TXT File
echo "[+] GENERATING FILE TASK 8 [+]"
echo "

=========================================================================
                         TASK 8: NETWORKING
=========================================================================

[+] FIND IP ADDRESS [+]

> COMMAND:- hostname -I | awk '{print $1}'
> COMMAND OVERVIEW:- We check hostname using hostname command but When we Check IP Address, then we just add -I flag.
> OUTPUT:- 192.168.31.226

[+] PING google.com '5 PACKETS' [+]

> COMMAND:- ping -c 5 google.com
> COMMAND OVERVIEW:- Using of ping command, We check Our Website aur Server is Online/Offline. When we get Packets line by line then Assume that Our Server and Website is Live.
> OUTPUT:-
	PING google.com (2404:6800:4009:804::200e) 56 data bytes
	64 bytes from bom05s05-in-x0e.1e100.net (2404:6800:4009:804::200e): icmp_seq=1 ttl=116 time=43.4 ms
	64 bytes from bom05s05-in-x0e.1e100.net (2404:6800:4009:804::200e): icmp_seq=2 ttl=116 time=133 ms
	64 bytes from bom05s05-in-x0e.1e100.net (2404:6800:4009:804::200e): icmp_seq=3 ttl=116 time=43.2 ms
	64 bytes from bom05s05-in-x0e.1e100.net (2404:6800:4009:804::200e): icmp_seq=4 ttl=116 time=42.9 ms
	64 bytes from bom05s05-in-x0e.1e100.net (2404:6800:4009:804::200e): icmp_seq=5 ttl=116 time=107 ms

	--- google.com ping statistics ---
	5 packets transmitted, 5 received, 0% packet loss, time 4004ms
	rtt min/avg/max/mdev = 42.897/73.970/133.073/38.612 ms

[+] CHECK DNS RESOLUTION [+]

> COMMAND:- nslookup google.com
> COMMAND OVERVIEW:- nslookup command Find all DNS Records for a domain name.
> OUTPUT:-
	Server:		127.0.0.53
	Address:	127.0.0.53#53

	Non-authoritative answer:
	Name:	google.com
	Address: 142.251.43.174
	Name:	google.com
	Address: 2404:6800:4009:801::200e

" >> ${WORK_DIR}/linux-assignment.txt
echo ""
echo "File Generated !"
sleep 2

read -p "Want to Remove All Unnecessary Files (y/n)" CHOOSE
if [[ ${CHOOSE} == 'y' || ${CHOOSE} == 'Y' ]];
then
	echo -e "Removing ${GREEN}devops_practice${NC}, ${GREEN}Screenshots${NC}, ${GREEN}Archive Files${NC}"
	rm -rf ~/devops_practice ~/backup.tar ~/Desktop/devops_practice ${WORK_DIR}/screenshots ${WORK_DIR}/linux-assignment.txt
	echo "All Files Removed "
else
	echo "No Issue ! Do Manually :D"
fi

read -p "Want to Upload All Created Files and Directories to Server [y/n]: " CHOOSESERVER
if [[ ${CHOOSESERVER} == 'y' || ${CHOOSESERVER} == 'Y' ]];
then
	echo "Starting to Upload AT Server..."
	echo -e "${GREEN}We Use Existed Keypair for Connecting with Server${NC}"
	read -p "Enter Your Server User Name (Default: manish) : " USERNAME
	USERNAME=${USERNAME:-manish}
	read -p "Enter Your Server IP (Default: 100.112.254.3): " SERVER_IP
	SERVER_IP=${SERVER_IP:-100.112.254.3}
	echo "Copying SSH Keypair In Server"
	ssh-copy-id -i ~/.ssh/manish.pub ${USERNAME}@${SERVER_IP}
	echo "SSH Key Successfully Transfered to Host Address."
	echo ""
	echo "Copy All Files In Server..."
	scp -r ~/Desktop/cssoft-training/linux-assignment ${USERNAME}@${SERVER_IP}:/home/${USERNAME}/
	echo ""
	sleep 2
	echo "File Transfered Successfully !"
	sleep 2
	echo ""
else
	echo "Do Manually..."
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
