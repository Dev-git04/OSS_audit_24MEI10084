# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---
## 1. System Identity Report (`01-identify.sh`)
```bash
Devansh @ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Devansh 
Home Directory:     /home/Devansh 
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Wed Mar 29 14:30:00 UTC 2023
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---
## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Devansh @ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this Debian/Ubuntu system.
Version: Python 3.10.4
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: Python is a high-level, interpreted programming language that is widely used for web development, scientific computing, and data analysis.
 - Linux: Linux is an open-source operating system that is widely used in servers, desktops, and mobile devices.
 - Git: Git is a version control system that is widely used for software development and collaboration.
 - Vim: Vim is a text editor that is widely used by programmers and system administrators.
================================================================================
```
---
## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Devansh @ubuntu-server:~/Python$ ./03-auditor.sh
/etc  16K  755  root
/var/log  100K  755  root
/usr/bin  100M  755  root
/usr/lib  500M  755  root
/usr/local  10M  755  root
/var/www  100K  755  root
/home/Devansh/.local/lib/python3.10  100K  755  Devansh 
/usr/lib/python3.10  500M  755  root
```
---
## 4. Log File Analyzer (`04-logs.sh`)
```bash
Devansh @ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
Searching for keyword 'error' in log file '/var/log/syslog'...
Found 10 occurrences of keyword 'error'.
Last 5 matches:
Mar 29 14:20:00 ubuntu-server CRON[1234]: error: failed to run command
Mar 29 14:15:00 ubuntu-server systemd[1]: error: failed to start service
Mar 29 14:10:00 ubuntu-server sshd[1234]: error: failed to authenticate user
Mar 29 14:05:00 ubuntu-server systemd[1]: error: failed to start service
Mar 29 14:00:00 ubuntu-server CRON[1234]: error: failed to run command
```
---
## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Devansh @ubuntu-server:~/Python$ ./05-manifesto.sh
Welcome to the Open Source Manifesto Generator!
What is your name? Devansh 
What is your favorite open-source project? Linux
What do you think is the most important aspect of open-source software? Freedom
My name is Devansh , and I believe in the power of open-source software. My favorite project is Linux, and I think the most important aspect of open-source software is Freedom.
```