#!/bin/bash

ACTIVE_SSH_CONNECTIONS=$(ss -t -a | grep -c 'ESTAB.*:ssh')
echo "Active SSH connections: $ACTIVE_SSH_CONNECTIONS"
