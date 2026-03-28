#!/bin/bash
# ============================================================
# Script 4: Log File Analyzer
# Author: Ishika Mittal
# Registration Number: 24BAI10301
# Course: Open Source Software
# Description: Reads a log file line by line and counts how
#              many times a given keyword appears
# Usage: ./script4_log_analyzer.sh <logfile> [keyword]
# ============================================================

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "========================================================"
echo "              LOG FILE ANALYZER"
echo "========================================================"
echo ""

# Validate file argument
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

echo "Log File : $LOGFILE"
echo "Keyword  : '$KEYWORD'"
echo ""

# Read the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Handle zero matches
if [ $COUNT -eq 0 ]; then
    echo "No matches found for '$KEYWORD'. Retrying..."
    sleep 1
fi

echo "--- Result ---"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "--- Last 5 Matching Lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "========================================================"
echo "              End of Log File Analyzer"
echo "========================================================"
