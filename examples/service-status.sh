#!/bin/bash

# Check if the number of arguments is not equal to 1
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <service_name>"
  exit 1
fi

SERVICE_NAME=$1

# Check if the service is running
if systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "$SERVICE_NAME is running."
else
  echo "$SERVICE_NAME is not running."
fi
