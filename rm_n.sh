#!/bin/bash

echo "usage: $0 <$1> <$2>" 1>&2;
find $1 -type f -size +$2\c -exec rm -f {} \;
