#!/bin/bash
# Author: Devansh  (24MEI10084)
# Purpose: Define an array of directories (/etc, /var/log, etc.) and dynamically append 2 specific paths for Git. Loop through them, check existence, and use 'awk' to extract size, permissions, and owner into clean columns.

dirs=("/etc" "/var/log" "/usr/bin" "/usr/local/bin" "/home/Devansh/.git" "/home/Devansh/.gitconfig")

echo "================================================================================"
echo "                   Git AUDIT - DIRECTORY AUDITOR                 "
echo "================================================================================"

echo "Directory          Size          Permissions          Owner"
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        SIZE=$(du -sh "$dir" | awk '{print $1}')
        PERMISSIONS=$(stat -c "%a" "$dir")
        OWNER=$(stat -c "%U" "$dir")
        echo "$dir          $SIZE          $PERMISSIONS          $OWNER"
    else
        echo "$dir does not exist."
    fi
done

echo "================================================================================"