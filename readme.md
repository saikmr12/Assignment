## Script Explanation:
* LOG_FILE: Replace your_log_file.log with the path to the log file you want to monitor.
* CTRLC: This function is called when the script receives a SIGINT (Ctrl+C) signal. It sets RUNNING to false to stop the loop.
* trap command: Sets up a trap to call the CTRLC function when a SIGINT is received.
* while loop: The loop continuously runs until RUNNING is set to false.
* tail -n 0 -F: -n 0 specifies that we want to start reading from the end of the file, and -F allows tail to continue tracking the file even if it's rotated.
* sleep: This controls the delay between checking for new log entries.

## Instructions:
* Replace "your_log_file.log" with the actual path to your log file.
* 8 Save this script in a file, e.g., monitor_log_realtime.sh.
* Make the script executable: chmod +x monitor_log_realtime.sh
* Run the script: ./monitor_log_realtime.sh
## How to Use:
* When you run the script, it will continuously display new log entries in real-time.
* To stop the monitoring loop, press Ctrl+C. This will trigger the CTRLC function, which sets RUNNING to false and stops the loop.