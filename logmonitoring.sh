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

# Continuous loop to monitor the log file
while $RUNNING; do
    # Use tail to display new log entries in real-time
    tail -n 0 -F "$LOG_FILE"

    # Optional: Add a delay to control how often the log file is checked
    # Adjust as needed
    sleep 1
done
