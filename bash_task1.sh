#!/bin/bash

# Set the threshold for disk usage (90% in this case)
THRESHOLD=90

# Get the current disk usage percentage for the root filesystem
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# Check if disk usage exceeds the threshold
if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    # Define email parameters
    EMAIL_SUBJECT="Disk Usage Alert"
    EMAIL_TO="your_email@example.com"
    EMAIL_BODY="Disk usage on $(hostname) has exceeded $THRESHOLD%. Current usage is $DISK_USAGE%."

    # Send the email using the 'mail' command
    echo "$EMAIL_BODY" | mail -s "$EMAIL_SUBJECT" "$EMAIL_TO"

    # Log the alert
    echo "Disk usage alert email sent. Current usage is $DISK_USAGE%."
else
    # Log that disk usage is below the threshold
    echo "Disk usage is below the threshold. Current usage is $DISK_USAGE%."
fi
