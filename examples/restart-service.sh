#!/bin/bash

read -p "Enter Service name to restart: " SERVICE_NAME

# Check if the service name is not empty
if [ -z "$SERVICE_NAME" ]; then
  echo "No service name provided."
  exit 1
fi

# Attempt to restart the service
if systemctl restart "$SERVICE_NAME"; then
  echo "$SERVICE_NAME restarted successfully."
else
  echo "Failed to restart $SERVICE_NAME."
fi
