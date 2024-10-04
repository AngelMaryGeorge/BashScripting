#!/bin/bash
echo " "
echo "=========System Information============"
echo " "
echo "==============HostName================="
echo $(hostname)
echo "==============Kernel==================="
echo $(uname)
echo "==============OS========================"
echo $(cat /etc/os-release|grep "PRETTY_NAME")
echo "==============CPU Name======================="
echo $(cat /proc/cpuinfo|grep "model name")
echo "=============Cores======================"
echo $(nproc)
echo "=============Architecture==============="
echo $(uname -m)
echo "===========Uptime======================="
echo $(uptime)
echo "========================================"

