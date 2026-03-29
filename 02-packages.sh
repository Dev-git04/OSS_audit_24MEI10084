#!/bin/bash
# Author: Devansh  (24MEI10084)

echo "================================================================================"
echo "                   Python AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"
if [ -f "/etc/debian_version" ]; then
    package_name="python3"
    installed=$(dpkg -s $package_name &> /dev/null; echo $?)
    if [ $installed -eq 0 ]; then
        version=$(python3 --version)
        echo "Status: $package_name is INSTALLED on this Debian/Ubuntu system."
        echo "Version: $version"
    else
        echo "Status: $package_name is NOT installed on this Debian/Ubuntu system."
    fi
    echo "--------------------------------------------------------------------------------"
    echo "FOSS Philosophy Notes:"
    echo " - Python: Python is a high-level, interpreted programming language that is widely used for web development, scientific computing, and data analysis."
    echo " - Linux: Linux is an open-source operating system that is widely used in servers, desktops, and mobile devices."
    echo " - Git: Git is a version control system that is widely used for software development and collaboration."
    echo " - Vim: Vim is a text editor that is widely used by programmers and system administrators."
echo "================================================================================"
fi