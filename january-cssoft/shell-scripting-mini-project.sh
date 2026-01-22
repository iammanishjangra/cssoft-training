#!/bin/bash

<< Information

Name:		Manish Kumar
Course:		DevOps Engineer
GitHub:		https://www.github.com/iammanishjangra
LinkedIn:	https://www.linkedin.com/in/manishjangra97

+++++++++++++++++++++++++++++++++++
    MINI PROJECT WORKFLOW
+++++++++++++++++++++++++++++++++++

- Welcome the user, with greetings to his/her username
- Show the date and time 
- Show the uptime of the server and the last logins
- Show the disk space and RAM utilization
- Show the top CPU processes
- Add more beautification and commands if you know them

Information

echo ""
echo ""
echo "+++++++++++++ [[ PROJECT START ]] ++++++++++++++++"
clear
echo "++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "       WELCOME TO MY MINI PROJECT, $USER!         "
echo "++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "//////////////////////////////////////////////////"
echo "		SHOW CURRENT DATE AND TIME		"
echo "//////////////////////////////////////////////////"
echo ""
echo "Current Time: $(date | awk '{print $4,$5,$6}')"
echo "Current Date: $(date | awk '{print $3,$2,$7}')"
echo "Name of Week: $(date | awk '{print $1}')"
echo ""
echo "//////////////////////////////////////////"
echo "         UPTIME OF THE SERVER"
echo "//////////////////////////////////////////"
echo ""
echo "Uptime is: $(uptime -p | awk '{print $2,$3}') [$(uptime -p | awk '{print $1}')]"
echo ""
echo "//////////////////////////////////////////"
echo "         SHOW LAST LOGIN DETAILS"
echo "//////////////////////////////////////////"
echo ""
last -aF | head -3
echo ""
echo "//////////////////////////////////////////"
echo "       SHOW DISK SPACE AND RAM USES       "
echo "//////////////////////////////////////////"
echo ""
df -h | xargs | awk '{print "Total/Used: "$9" / "$10" ("$12" used)"}'
df -h --total | grep 'total'
echo ""
echo "//////////////////////////////////////////"
echo "             RAM UTILIZATION  		"
echo "//////////////////////////////////////////"
echo ""
free -h
echo ""
echo ""
echo "//////////////////////////////////////////"
echo "            TOP CPU PROCESS 		"
echo "//////////////////////////////////////////"
echo ""
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
echo ""
echo ""
echo "//////////////////////////////////////////"
echo "          SHOW IP ADDRESS  		"
echo "//////////////////////////////////////////"
echo ""
echo "===> $(hostname -I | awk '{print $1}')"
echo ""
echo "//////////////////////////////////////////"
echo "           RUNNING PROCESS 		"
echo "//////////////////////////////////////////"
echo ""
top -bc -u cssoft -n 1 | head -n 15
echo ""
echo "+++++++++++++++++++++++++++++++++++++++++++"
echo "        THANKYOU FOR WATCHING !		 "
echo "+++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "+++++++++++ [[ PROJECT DONE ]] ++++++++++++"
echo ""
