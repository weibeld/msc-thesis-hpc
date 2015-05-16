#!/usr/bin/env bash

submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c fribourg -r 1000 -m 2G -s 4-4 -a 2-4
submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.m1.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c "fribourg -m1" -r 1000 -m 2G -s 4-4 -a 2-4
submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.m1.m2.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c "fribourg -m1 -m2" -r 1000 -m 2G -s 4-4 -a 2-4
submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.c.r2c.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c "fribourg -c -r2c" -r 1000 -m 2G -s 4-4 -a 2-4
submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.macc.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c "fribourg -macc" -r 1000 -m 2G -s 4-4 -a 2-4
submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.r.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c "fribourg -r" -r 1000 -m 2G -s 4-4 -a 2-4
submit.sh -m 4G -c 12:00:00 -d ~/jobs/2014-11-25/correctness/fribourg.rr.4-4.2-4 -q mpi.q -s 1G -p 4 -n a ~/scripts/compleq/compleq.sh -c "fribourg -rr" -r 1000 -m 2G -s 4-4 -a 2-4