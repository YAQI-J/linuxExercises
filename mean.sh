#!/bin/bash

echo 'usage: $0 $1 $2' | cat $2 |
    cut -c$1 |tail -n +2 |
    { count=1;
      while read n;
      do
	  count=$(($count + 1));
      done;
      awk '{ sum += $1 } END {print sum}' [$2];
      mean=$(($sum / $count));
      echo $mean; }
