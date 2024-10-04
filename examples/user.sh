#!/bin/bash

echo "====================== Create a new user ============================="
echo ""

# Prompt for username
read -p "Enter a username: " username

# Check if the username is not empty
if [ -z "$username" ]; then
  echo "Username cannot be empty."
  exit 1
fi

# Prompt for password and set it for the new user
read -sp "Enter password for $username: " password
echo ""

# Add user
if sudo useradd "$username"; then
  echo "$username:$password" | sudo chpasswd
  echo "User $username created successfully."
else
  echo "Failed to create user $username."
  exit 1
fi

echo ""
echo "==================== Add new user to a group ========================="
echo ""

# Prompt for group name
read -p "Enter the group to add '$username' to: " group
echo ""

# Add user to group
if sudo usermod -aG "$group" "$username"; then
  echo "User $username added to group $group successfully."
else
  echo "Failed to add user $username to group $group."
fi


