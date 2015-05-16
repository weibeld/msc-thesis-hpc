#!/bin/bash

~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/frib.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "fribourg"
~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/frib.m.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "fribourg -m"
~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/frib.m.m2.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "fribourg -m -m2"
~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/frib.macc.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "fribourg -macc"
~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/frib.r.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "fribourg -r"
~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/frib.r2ifc.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "fribourg -r2ifc"
~/submit.sh -c 72:00:00 -q mpi.q -s 2G -p 3 -n ea -d ~/jobs/07.10.2014/rank.r.tr.ro.macc.15 ~/scripts/complement.sh -d ~/data/test_set_s15.tar.gz -a "rank -r -tr -ro -macc"
