#!/bin/bash
# Define Colors
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
CYAN='\e[0;36m'
NC='\e[0m' # No Color

#Display server uptime
echo -e "${CYAN}============= Uptime of Server ===========${NC}"
uptime

#display OS & Kernel Version
echo -e "\n${CYAN}=========== OS Release and Kernel Info ===========${NC}"
grep PRETTY_NAME /etc/os-release
uname -a

#Display CPU Usage
echo -e "\n${CYAN}========== CPU Usage ==========${NC}"
top -n 1 -b | grep "Cpu(s)"

#display Memory Usage
echo -e "\n${CYAN}========== Memory Usage ===========${NC}"
free -h

#Display total disk space available
echo -e "\n${CYAN}============= Disk Space Usage =============${NC}"
df -h
echo -e "\n${CYAN}Total disk usage in server:${NC}"
df -h --total | grep total

# Top 5 processes by Memory and CPU Usage
echo -e "\n${CYAN}===== Top 5 CPU Usage Processes =====${NC}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

