#!/bin/bash

data=~/data/test

tar -cz -f tmp.tar.gz -C $(dirname $data) $(basename $data)
mv tmp.tar.gz $TMP
tar -xz -f $TMP/tmp.tar.gz -C $TMP && rm $TMP/tmp.tar.gz
data=$TMP/$(basename $data)

echo "ls -l \$TMP: "
ls -l $TMP
echo

echo "data: $data"
echo

echo "ls $data:"
ls $data
