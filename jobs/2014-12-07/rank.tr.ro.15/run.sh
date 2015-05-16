#!/bin/bash
# Start rank on the 10 partitions of the size 15 test set.

for i in $(seq 1 10); do
  i_padded=$(printf "%02d" $i)
  dir=rank.tr.ro.15_${i_padded}_of_10
  mkdir $dir
  submit.sh -c 72:00:00 -q mpi.q -n ea -d $(pwd)/$dir ~/scripts/complement/complement.sh -a "rank -tr -ro" -t 600 -m 1G -o -d ~/data/partitions/15.10/15.${i_padded}_of_10.tar.gz
done
