#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <directory> <size>"
  echo "Example: $0 /path/to/directory 100M"
  exit 1
fi

DIRECTORY="$1"
SIZE="$2"

find "$DIRECTORY" -type f -size +"$SIZE" -exec ls -lh {} + | awk '{ print $9 ": " $5 }'
