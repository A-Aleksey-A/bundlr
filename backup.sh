#!/bin/bash

# Define an array of server IP addresses
servers=(
  "194.146.12.107"
  "38.242.222.82"
  "194.146.12.105"
  # Add more IP addresses as needed
)

# Loop over the server IP addresses
for ip in "${servers[@]}"
do
  # Define the destination path
  dest="C:/Users/akaly/Desktop/test_results/Server-${ip##*.}/test-file.txt"

  # Copy the file from the remote server to the local machine
  scp -r "root@$ip:/root/backup_test/test-file.txt" "$dest"
done

