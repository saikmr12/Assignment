#!/bin/bash

# Path to the log file you want to monitor
LOG_FILE="your_log_file.log"

# Function to handle Ctrl+C
function CTRLC() {
    echo "Stopping log monitoring..."
    RUNNING=false
}

# Trap SIGINT (Ctrl+C) and call CTRLC function
trap CTRLC SIGINT

# Flag to control the loop
RUNNING=true

echo "Monitoring log file: $LOG_FILE"

# Function to count occurrences of a keyword
count_occurrences() {
    keyword="$1"
    count=$(grep -o "$keyword" "$LOG_FILE" | wc -l)
    echo "Occurrences of '$keyword': $count"
}

# Function to generate a summary report
generate_summary() {
    echo "Top 5 Error Messages:"
    awk '/ERROR/ {print $0}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
    # Adjust the pattern 'ERROR' as needed for your log format
}

# Continuous loop to monitor the log file
while $RUNNING; do
    # Use tail to display new log entries in real-time
    tail -n 0 -F "$LOG_FILE"

    # Perform basic analysis
    echo "Performing basic analysis..."

    # Example: Count occurrences of specific keywords
    count_occurrences "ERROR"
    
    # Generate summary report
    generate_summary

    # Optional: Add a delay to control how often the log file is checked
    # Adjust as needed
    sleep 1
done
