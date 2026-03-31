#!/bin/bash
# Author: Devansh  (24MEI10084)
# Purpose: Accept a target log file as $1. Add a comment suggesting a realistic log path for Git. Use a 'while read' loop to count occurrences of a keyword ($2), then use 'tail' to print the last 5 matches.

# Suggested log path for Git: /var/log/git.log

echo "================================================================================"
echo "                   Git AUDIT - LOG FILE ANALYZER                 "
echo "================================================================================"

count=0
while read -r line; do
    if [[ $line == *"$2"* ]]; then
        ((count++))
    fi
done < "$1"

echo "Total occurrences of '$2': $count"

tail -n 5 "$1" | grep -i "$2"

echo "================================================================================"