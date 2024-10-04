#!/bin/bash

TMP_DIR="/tmp"

find $TMP_DIR -type f -mtime +7 -exec rm {} \;
echo "Old temporary files cleaned up."
