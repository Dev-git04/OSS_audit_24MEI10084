#!/bin/bash
# Author: Devansh  (24MEI10084)
# Purpose: Use OS-detection to define the correct package name for Git. Check installation status and extract the exact version.

echo "================================================================================"
echo "                   Git AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"

if [ -f "/etc/debian_version" ]; then
    PACKAGE_MANAGER="apt"
    PACKAGE_NAME="git"
    INSTALL_STATUS=$(dpkg -s $PACKAGE_NAME &> /dev/null; echo $?)
    if [ $INSTALL_STATUS -eq 0 ]; then
        VERSION=$(dpkg -s $PACKAGE_NAME | grep Version | cut -d ' ' -f2-)
        echo "Status: $PACKAGE_NAME is INSTALLED on this Debian/Ubuntu system."
        echo "Version: $VERSION"
    else
        echo "Status: $PACKAGE_NAME is NOT installed on this Debian/Ubuntu system."
    fi
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Git: Git is a free and open source distributed version control system."
echo " - Linux: Linux is a free and open source operating system."
echo " - Vim: Vim is a free and open source text editor."
echo " - Firefox: Firefox is a free and open source web browser."
echo "================================================================================"