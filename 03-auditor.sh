#!/bin/bash
# Author: Devansh  (24MEI10084)

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib" "/usr/local" "/var/www" "/home/$(whoami)/.local/lib/python3.x" "/usr/lib/python3.x")
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        size=$(du -sh "$dir" | cut -f1)
        permissions=$(stat -c "%a" "$dir")
        owner=$(stat -c "%U" "$dir")
        echo "$dir $size $permissions $owner"
    fi
done