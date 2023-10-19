#!/usr/bin/env bash

# Define the output and error files
output_file="output.txt"
error_file="error.txt"

# Initialize the run counter
runs=0

# Run fail.sh until it fails
while ./fail.sh >$output_file 2>$error_file; do
    echo "fail.sh succeeded, running again..."
    ((runs++)) #(()) is used for arithmetic operations
done

# Print the number of runs and the output and error streams
echo "fail.sh failed after $runs runs"
echo "Output:"
cat $output_file
echo "Error:"
cat $error_file