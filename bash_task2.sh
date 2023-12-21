#!/bin/bash

# Define the list of target servers
SERVERS_FILE="server_list.txt"

# Define the log directory path where you want to search for error messages
LOG_DIR="/path/to/log/directory"

# Define the error message you're looking for
ERROR_MESSAGE="Error:"

# Loop through the list of servers
while read -r SERVER; do
    echo "Checking logs on $SERVER..."
    
    # SSH into the server and check the logs for the error message
    ssh "$SERVER" "grep -r '$ERROR_MESSAGE' '$LOG_DIR'"

    # Check the exit status of the grep command
    if [ $? -eq 0 ]; then
        echo "Error found on $SERVER."
    else
        echo "No errors found on $SERVER."
    fi
    
    echo "--------------------------"
done < "$SERVERS_FILE"
