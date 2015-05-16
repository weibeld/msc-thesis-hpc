#!/bin/bash

t_out=600
m_out=2M
aut=~/data/test_set_s15/s15_t1.8_a0.6_099.gff

echo "timeout: ${t_out}s"
echo "memout: $m_out"
echo

export JVMARGS="-Xmx$m_out -Xms$m_out"

echo "Executing goal complement -m fribourg $aut >tmp"
echo
ulimit -S -t $t_out
goal complement -m fribourg $aut >tmp
echo "\$?: $?"
ulimit -S -t unlimited

