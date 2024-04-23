## Script Explanation:
* count_occurrences: This function takes a keyword as an argument and counts the occurrences of that keyword in the log file.
* generate_summary: This function generates a summary report based on the log entries. In this example, it finds the top 5 most frequent error messages.
* while loop: The main loop remains the same, continuously monitoring the log file and displaying new entries.
* awk: Used for basic text processing and pattern matching in log entries.
* sort: Sorting the output of awk to find the top occurrences.
* head: Selecting the top results.

## Instructions:
1. Replace "your_log_file.log" with the actual path to your log file.
2. Save this script in a file, e.g., monitor_log_analysis.sh.
3. Make the script executable: chmod +x monitor_log_analysis.sh
4. Run the script: ./monitor_log_analysis.sh
## How to Use:
* When you run the script, it will continuously display new log entries in real-time.
* Press Ctrl+C to stop the monitoring loop and exit the script.
* While running, the script will also perform basic analysis on the log entries:
 > It counts the occurrences of the keyword "ERROR".
 > It generates a summary report showing the top 5 most frequent error messages (you can adjust this based on your log format).
