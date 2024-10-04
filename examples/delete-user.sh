#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

read -p "Enter the name of user to be deleted : " USERNAME

# Check if the user exists
if id -u $USERNAME >/dev/null 2>&1; then
  echo "User $USERNAME exists."
else
  echo "User $USERNAME does not exist."
  exit 1
fi

# Delete the user
userdel -r $USERNAME

# Check if the user exists
if id -u $USERNAME >/dev/null 2>&1; then
  echo "User $USERNAME not deleted."
else
  echo "User $USERNAME deleted."
  exit 1
fi

