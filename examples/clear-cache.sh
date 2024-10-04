#!/bin/bash

sudo sync; sudo sysctl -w vm.drop_caches=3
echo "System cache cleared."

