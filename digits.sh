#!/bin/bash

pattern="[01]{4}"

sum=0;
for n in {1000..2000}; do
#for n in {1000..1003}; do    
    if [[ $n =~ $pattern ]]; then
	sum=$(($sum + $n));
    fi;
done;
echo $sum;


