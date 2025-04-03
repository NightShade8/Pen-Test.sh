#!/bin/bash

# Check if target is provided
if [ -z "$1" ]; then
    echo "Usage: ./pen-test.sh <target>"
    exit 1
fi

TARGET=$1
REPORT_DIR="$HOME/pen_test_reports"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
REPORT_FILE="$REPORT_DIR/report_$TIMESTAMP.txt"

# Create directory for reports if it doesn't exist
mkdir -p $REPORT_DIR

echo "Starting penetration test on $TARGET"
echo "Report will be saved to $REPORT_FILE"

# Run Nmap for website scanning
echo "Running Nmap scan for website..."
nmap -p 80,443 --script=http-enum,http-title,http-headers $TARGET >> $REPORT_FILE

# Run dirb for directory brute-forcing
echo "Running dirb scan..."
dirb http://$TARGET /usr/share/wordlists/dirb/common.txt >> $REPORT_FILE

# Run nikto for web application scanning
echo "Running Nikto scan..."
nikto -h $TARGET >> $REPORT_FILE

echo "Penetration test complete! Report saved at $REPORT_FILE"
