#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: Ishika Mittal
# Registration Number: 24BAI10301
# Course: Open Source Software
# Description: Displays a welcome screen showing system info
#              and confirms the open-source license of the OS
# ============================================================

# --- Variables ---
STUDENT_NAME="Ishika Mittal"
REG_NUMBER="24BAI10301"
SOFTWARE_CHOICE="Python"

# Capture system information using command substitution $()
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%d %B %Y, %H:%M:%S')
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display Header ---
echo "========================================================"
echo "        OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT      "
echo "========================================================"
echo ""

# --- Student Information ---
echo "--- Student Information ---"
echo "Name              : $STUDENT_NAME"
echo "Registration No.  : $REG_NUMBER"
echo "Software Audited  : $SOFTWARE_CHOICE"
echo ""

# --- System Information ---
echo "--- System Information ---"
echo "Distribution      : $DISTRO"
echo "Kernel Version    : $KERNEL"
echo "Logged In User    : $USER_NAME"
echo "Home Directory    : $HOME_DIR"
echo "System Uptime     : $UPTIME"
echo "Date and Time     : $DATE_TIME"
echo ""

# --- Open Source License Information ---
echo "--- Open Source License ---"
echo "This system runs on Linux, licensed under GPL v2."
echo "Python is licensed under the PSF License —"
echo "a permissive open-source license granting all four freedoms."
echo ""

# --- Footer ---
echo "========================================================"
echo "        End of System Identity Report"
echo "========================================================"
