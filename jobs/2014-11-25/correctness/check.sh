#!/bin/bash

subdirs=(*/)
for sub in "${subdirs[@]}"; do
  sub=${sub%/}
  echo -ne "$sub:\t"
  grep -c true "$sub"/stdout
done
