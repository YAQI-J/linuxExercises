#!/bin/bash

echo 'usage: $0 $1 $2' | cat $2 | cut -c$1 | tail -n +2 | awk -F';' '{sum+=$2} END {print sum/NR}'
