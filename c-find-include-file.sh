#!/bin/bash

echo "Looking for $1"

echo "#include <$1>" | gcc -E -x c - | grep $1 |awk '{print $3}' | sort | uniq

