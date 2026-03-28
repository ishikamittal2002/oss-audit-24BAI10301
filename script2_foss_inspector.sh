#!/bin/bash
# ============================================================
# Script 2: FOSS Package Inspector
# Author: Ishika Mittal
# Registration Number: 24BAI10301
# Course: Open Source Software
# Description: Inspects a FOSS package using dpkg and
#              displays version, maintainer, and description
# ============================================================

PACKAGE="python3"

echo "========================================================"
echo "           FOSS PACKAGE INSPECTOR"
echo "========================================================"
echo ""

# Check if the package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "✔ $PACKAGE is installed."
    echo ""
    echo "--- Package Details ---"
    dpkg -s $PACKAGE | grep -E "Version|Maintainer|Description"
else
    echo "✘ $PACKAGE is NOT installed."
fi

echo ""
echo "--- Software Description ---"

# Case statement to describe common FOSS packages
case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language." ;;
    apache2)
        echo "Apache: Backbone of the open web." ;;
    mysql-server)
        echo "MySQL: Open-source database system." ;;
    vlc)
        echo "VLC: Plays almost any media format." ;;
    *)
        echo "$PACKAGE: An open-source software package." ;;
esac

echo ""
echo "========================================================"
echo "           End of FOSS Package Inspector"
echo "========================================================"
