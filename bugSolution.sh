#!/bin/bash

# Improved script with robust error handling

file="my_data.txt"

if [ ! -f "$file" ]; then
  echo "Error: File not found."
  exit 1
fi

if [ -s "$file" ]; then
  while IFS= read -r line; do
    # Process each line with error handling
    if ! echo "Processing: $line" ; then
      echo "Error processing line: $line"
      exit 1
    fi 
  done < "$file"
else
  echo "Warning: Input file is empty."
fi
