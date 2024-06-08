#!/bin/bash

# Function to delete files
delete_files() {
  for file in "$1"/*; do
    if [ -d "$file" ]; then
      delete_files "$file"
    elif [ -f "$file" ]; then
      extension="${file##*.}"
      if [[ "$extension" != "bz2" && "$extension" != "sh" && "$extension" != "bat" ]]; then
        echo "Deleting $file"
        rm "$file"
      fi
    fi
  done
}

# Start deletion from the current directory
delete_files "$(pwd)"
