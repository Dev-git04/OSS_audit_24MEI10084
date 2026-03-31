# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Devansh @ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Devansh 
Home Directory:     /home/Devansh 
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 18:03:24 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Devansh @ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: git is INSTALLED on this Debian/Ubuntu system.
Version: 2.34.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: Git is a free and open source distributed version control system.
 - Linux: Linux is a free and open source operating system.
 - Vim: Vim is a free and open source text editor.
 - Firefox: Firefox is a free and open source web browser.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Devansh @ubuntu-server:~/Git$ ./03-auditor.sh
Directory          Size          Permissions          Owner
/etc          12M          755          root
/var/log          100M          755          root
/usr/bin          100M          755          root
/usr/local/bin          10M          755          root
/home/Devansh/.git          1M          700          Devansh 
/home/Devansh/.gitconfig          1K          600          Devansh 
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Devansh @ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Git AUDIT - LOG FILE ANALYZER                 
================================================================================
Total occurrences of 'error': 10
Mar 30 18:00:01 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 18:00:02 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 18:00:03 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 18:00:04 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 18:00:05 ubuntu-server systemd[1]: Failed to start Service.
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Devansh @ubuntu-server:~/Git$ ./05-manifesto.sh
================================================================================
                   Git AUDIT - MANIFESTO GENERATOR                 
================================================================================
What is your name? Devansh 
What is your favorite open source project? Git
What do you think is the most important aspect of open source software? Freedom
As Devansh , I believe that Git is a great example of the power of open source software. I think that the most important aspect of open source software is Freedom. I will strive to contribute to the open source community and promote the values of freedom, collaboration, and innovation.
Manifesto saved to Devansh .txt
================================================================================
```