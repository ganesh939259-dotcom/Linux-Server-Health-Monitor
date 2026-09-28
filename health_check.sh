#!/bin/bash

echo "================================"
echo "     SERVER HEALTH REPORT"
echo "================================"

hostname=$(hostname)

echo "Hostname : $hostname"

disk=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "Disk Usage : $disk%"

cpu=$(top -bn1 | grep "Cpu" | awk '{print 100 - $8}')
cpu=${cpu%.*}

echo "CPU Usage  : $cpu%"

memory=$(free | awk '/Mem:/ {print $3/$2 * 100}')
memory=${memory%.*}

echo "Memory Usage : $memory%"

if [ -d "/etc" ]
then
    echo "/etc : EXISTS"
else
    echo "/etc : NOT FOUND"
fi

if systemctl is-active --quiet nginx
then
    echo "nginx : RUNNING"
else
    echo "nginx : NOT RUNNING"
fi

log_file="/var/log/messages"

if [ -f "$log_file" ]
then
    error_count=$(grep -i "error" "$log_file" | wc -l)
    echo "ERROR count : $error_count"
else
    echo "Log file : NOT FOUND"
fi

if [ "$disk" -ge 80 ]
then
    echo "WARNING : Disk usage is HIGH"
else
    echo "Disk Status : NORMAL"
fi

if [ "$cpu" -ge 80 ]
then
    echo "WARNING : CPU usage is HIGH"
else
    echo "CPU Status : NORMAL"
fi

if [ "$memory" -ge 80 ]
then
    echo "WARNING : Memory usage is HIGH"
else
    echo "Memory Status : NORMAL"
fi

echo "================================"
echo "   HEALTH CHECK COMPLETED"
echo "================================"
