#!/bin/bash
# ============================================================
# Script 3: Disk and Permission Auditor
# Author: Ishika Mittal
# Registration Number: 24BAI10301
# Course: Open Source Software
# Description: Audits key system directories for permissions
#              and disk usage, including Python's config path
# ============================================================

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================================"
echo "           DISK AND PERMISSION AUDITOR"
echo "========================================================"
echo ""

echo "--- Directory Audit Report ---"
echo ""

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo ""
    else
        echo "$DIR => Does not exist"
        echo ""
    fi
done

echo "--- Python Config Directory ---"
if [ -d "/etc/python3" ]; then
    ls -ld /etc/python3
else
    echo "Python config directory (/etc/python3) not found on this system."
fi

echo ""
echo "========================================================"
echo "           End of Disk and Permission Auditor"
echo "========================================================"
