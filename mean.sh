#!/bin/bash

echo 'usage: $1 $2' | cat $2 | cut -c $1 | tail -n +2 | { sum=0; count=0; while read n; do sum=$(($sum + $n)); count=$(($count + 1)); done; avg=$(($sum / ($count-1))); echo $avg; }
 
