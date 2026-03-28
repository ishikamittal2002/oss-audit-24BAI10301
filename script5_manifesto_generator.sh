#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author: Ishika Mittal
# Registration Number: 24BAI10301
# Course: Open Source Software
# Description: Takes user input and generates a personalized
#              open-source manifesto saved to a text file
# ============================================================

echo "========================================================"
echo "         OPEN SOURCE MANIFESTO GENERATOR"
echo "========================================================"
echo ""
echo "Answer three questions to generate your manifesto:"
echo ""

read -p "1. What open-source tool do you use daily? " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What do you want to build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write manifesto to file
echo "=======================================================" > $OUTPUT
echo "        MY OPEN SOURCE MANIFESTO" >> $OUTPUT
echo "=======================================================" >> $OUTPUT
echo "" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "On $DATE, I believe in open source." >> $OUTPUT
echo "I use $TOOL in my daily life." >> $OUTPUT
echo "Freedom means $FREEDOM to me." >> $OUTPUT
echo "I want to build $BUILD and share it with the world." >> $OUTPUT
echo "" >> $OUTPUT
echo "--- Signed ---" >> $OUTPUT
echo "$(whoami)" >> $OUTPUT
echo "=======================================================" >> $OUTPUT

echo ""
echo "✔ Manifesto saved to: $OUTPUT"
echo ""
echo "--- Your Manifesto ---"
cat $OUTPUT

echo ""
echo "========================================================"
echo "         End of Manifesto Generator"
echo "========================================================"
