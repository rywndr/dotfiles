#!/bin/sh
# Get CPU temperature and convert "C" to "c"
CPU_TEMP=$(sensors | awk '/^Package id 0:/ {print $4}' | sed 's/+//' | sed 's/C/c/')
# Get memory usage
MEM_USE=$(free -h | awk '/^Mem/ { print $3}' | sed 's/i//g' | sed 's/M/m/g' | sed 's/G/g/g')
# Display in format "CPU: 43°c | Mem: 2.0g"
echo "$CPU_TEMP $MEM_USE"
