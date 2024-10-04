#!/bin/bash

read -p "Enter the source directory path for Archiving : " source_dir
read -p "Enter the destination directory for archived file to be placed : " dest_dir
read -p "Enter the filename to be used : " filename

tar -czf "$dest_dir/$filename.tar.gz" "$source_dir"
echo "Archive created: $dest_dir/$filename.tar.gz"
