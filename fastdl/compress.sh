#!/bin/bash

# Function to compress files
compress_files() {
  for file in "$1"/*; do
    if [ -d "$file" ]; then
      compress_files "$file"
    elif [ -f "$file" ]; then
      extension="${file##*.}"
      if [[ "$extension" != "bz2" && "$extension" != "sh" && "$extension" != "bat" ]]; then
        if [ ! -e "${file}.bz2" ]; then
          echo "Compressing $file"
          bzip2 -9k "$file"
        else
          echo "$file.bz2 already exists. Skipping..."
        fi
      fi
    fi
  done
}

# Start compression from the current directory
compress_files "$(pwd)"
