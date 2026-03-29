#!/bin/bash
# Author: Devansh  (24MEI10084)
# Suggested log path for Python: /var/log/syslog

echo "Searching for keyword '$2' in log file '$1'..."
count=0
while read -r line; do
    if [[ $line == *"$2"* ]]; then
        ((count++))
    fi
done < "$1"
echo "Found $count occurrences of keyword '$2'."
echo "Last 5 matches:"
tail -n 5 "$1" | grep "$2"