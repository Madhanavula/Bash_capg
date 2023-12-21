

TH=90

DSIK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "$DISK_USAGE"
