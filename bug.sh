#!/bin/bash

# This script attempts to process a file, but it has a subtle error.
# The error is in how it handles the loop and potential lack of files

file="my_data.txt"

if [ ! -f "$file" ]; then
  echo "Error: File not found."
  exit 1
fi

while IFS= read -r line; do
  # Process each line
  echo "Processing: $line"
  # Potential for error if the line processing fails
  # Missing error handling in case of failing line processing
done < "$file"