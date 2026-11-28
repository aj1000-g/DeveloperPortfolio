#!/bin/bash
# Author: Aman Jha (Roll Number: 2601730058)
# Description: System Information Report Script (CSE103 Capstone Q2A)

echo "=========================================================="
echo "System Report | Name: Aman Jha | Roll No: 2601730058 | Date: $(date)"
echo "=========================================================="
echo ""

echo "--- CPU Information ---"
CPU_MODEL=$(lscpu | awk -F: '/Model name/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')
CPU_CORES=$(lscpu | awk -F: '/^CPU\(s\):/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')
echo "CPU Model : $CPU_MODEL"
echo "CPU Cores : $CPU_CORES"
echo ""

echo "--- Memory Usage ---"
free -h | awk 'NR==2 {printf "Total Memory: %s | Used Memory: %s | Available: %s\n", $2, $3, $7}'
echo ""

echo "--- Top 3 Processes by CPU Usage ---"
ps aux --sort=-%cpu | head -4
echo ""

echo "Report generated successfully."
