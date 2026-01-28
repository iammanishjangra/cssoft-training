#!/bin/bash

# =============================================================
# GLOBAL VARIABLES
# =============================================================
RAM_LIMIT=40
CPU_LIMIT=40
DISK_LIMIT=40
EMAIL="manishjangra97@gmail.com"

# ===========================================================
# COLOURS
# ===========================================================

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# RAM CALCULATION
TOTAL_MEM=$(free | grep Mem | awk '{print $2}')
USED_MEM=$(free | grep Mem | awk '{print $3}')
RAM_USAGES=$(( $USED_MEM * 100 / $TOTAL_MEM ))

# DISK CALCULATION
DISK_USAGES=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# CPU CALCULATION
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)
CPU_INT=${CPU_USAGE%.*}

HOSTNAME=$(hostname)
IP_ADDRESS=$(hostname -I | awk '{print $1}')

# =============================================================
# FUNCTIONS
# =============================================================

send_alert_mail() {
    local resource=$1
    local value=$2
    local limit=$3

    SUBJECT="CRITICAL: $resource Alert on $HOSTNAME"
    MESSAGE="Hi Manish,

The $resource has exceeded the threshold limit.

Server Details:
---------------
Hostname   : $HOSTNAME
IP Address : $IP_ADDRESS
Resource   : $resource
Current    : $value%
Threshold  : $limit%

Please take necessary action.
"
    echo "$MESSAGE" | mail -s "$SUBJECT" "$EMAIL"
}

ram_usages() {
    clear
    if [[ ${RAM_USAGES} -gt ${RAM_LIMIT} ]]; then
	echo "====================================================="
        echo -e "${RED}ALERT: RAM usage is ${RAM_USAGES}%${NC}"
	echo "====================================================="
	echo ""
        send_alert_mail "RAM" "$RAM_USAGES" "$RAM_LIMIT"
        echo "Mail Alert Sent to $EMAIL"
    else
	echo "====================================================="
        echo -e "${GREEN}Status OK: RAM usage is currently at ${RAM_USAGES}%.${NC}"
	echo "====================================================="
    fi
}

disk_usages() {
    clear
    if [[ ${DISK_USAGES} -gt ${DISK_LIMIT} ]]; then
	echo "====================================================="
        echo -e "${RED}ALERT: Disk Usage is ${DISK_USAGES}%${NC}"
	echo "====================================================="
	echo ""
        send_alert_mail "Disk" "$DISK_USAGES" "$DISK_LIMIT"
        echo "Mail Alert Sent to $EMAIL"
    else
	echo "====================================================="
        echo -e "${GREEN}Status OK: Disk usage currently at ${DISK_USAGES}%.${NC}"
	echo "====================================================="
    fi
}

cpu_usages() {
    clear
    if [[ ${CPU_INT} -gt ${CPU_LIMIT} ]]; then
	echo "====================================================="
        echo -e "{RED}ALERT: CPU Usage is ${CPU_USAGE}%${NC}"
	echo "====================================================="
	echo "" 
	send_alert_mail "CPU" "$CPU_INT" "$CPU_LIMIT"
        echo "Mail Alert Sent to $EMAIL"
    else
	echo "====================================================="
        echo -e "${GREEN}Status OK: CPU usage currently at ${CPU_USAGE}%.${NC}"
	echo "====================================================="
    fi
}

# =============================================================
# MAIN MENU
# =============================================================
PS3="Enter the option [1 - 4]: "
options=("RAM Usages" "Disk Usages" "CPU Usages" "Exit")

while true; do
    echo "========================================================="
    echo "      SYSTEM HEALTH CHECK MONITORING TOOL - $USER"
    echo "========================================================="
    select opt in "${options[@]}"; do
        case ${opt} in
            "RAM Usages")
		ram_usages;
		break ;;
            "Disk Usages")
		disk_usages;
		break ;;
            "CPU Usages")
		cpu_usages;
		break ;;
            "Exit")
                echo "=============================="
		echo "  THANKS FOR USING MY TOOL"
		echo "=============================="
                sleep 1;
		exit 0 ;;
            *)
		echo "Select Valid Options";
		break ;;
        esac
    done
done
