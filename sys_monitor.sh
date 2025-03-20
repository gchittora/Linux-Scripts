#Below line is a shebang that is a special instruction to the interpretor here it is bash to tell it what interpretor is to be used

#!/bin/bash

echo "System Monitoring Script is running ....."
echo "........................................"

echo -e "\nSystem uptime ⏲️"
uptime -p

echo -e  "\nDisk space utilized📂"
df -h | grep "^/dev/"

echo -e "\nCpu utilization🖥️"
top -b -n 1 | grep "%Cpu"

echo -e "\nTop 5 running processes by CPU utilization🚀"
ps aux --sort=-%cpu | awk '{printf "%-10s %-8s %-6s %-6s %-10s %s\n", $1, $2, $3, $4, $11, $12}' | head -6








