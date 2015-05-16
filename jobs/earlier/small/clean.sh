#!/bin/bash

dirs=($(echo */))

for dir in ${dirs[@]}; do
  echo "Cleaning $dir"
  cd $dir
  rm -f out log qsub *.err *.out *.txt core.* hs_err_pid*
  cd ..
done

