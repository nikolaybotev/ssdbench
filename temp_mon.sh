#!/bin/bash

DISK="$1"

n=1
while true; do
  smartctl -A "$DISK" | awk "/Temperature/ { print \"$n\\t\" \$2 }"
  sleep 1
  n=$((n+1))
done

