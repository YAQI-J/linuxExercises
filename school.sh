#!/bin/bash

# I used these steps to develop my working code:
#   cat Property_Tax_Roll.csv | head -n 20
#   grep -h "MADISON SCHOOLS" Property_Tax_Roll.csv | head -n 20
#   cut Property_Tax_Roll.csv -f 7 | head -n 20
#   head Property_Tax_Roll.csv | grep -h "MADISON SCHOOLS" | cut -d, -f 7 | { sum=0; count=0; while read n; do sum=$(($sum + $n)); count=$(($count + 1)); done; avg=$(($sum / $count)); echo $avg; }


cat Property_Tax_Roll.csv | grep -h "MADISON SCHOOLS" | cut -d, -f 7 | { sum=0; count=0; while read n; do sum=$(($sum + $n)); count=$(($count + 1)); done; avg=$(($sum / $count)); echo $avg; }
