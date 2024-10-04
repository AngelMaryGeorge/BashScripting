#!/bin/bash

echo " "
echo "=== Network details of the system ==="
echo " "
echo "============== Hostname =============="
hostname
echo "============== IP ===================="
hostname -I
echo "============== DNS ==================="
grep nameserver /etc/resolv.conf
echo "============== Gateway ==============="
ip route | grep default
echo "======================================"

