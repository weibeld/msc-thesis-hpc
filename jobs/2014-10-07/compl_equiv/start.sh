#!/bin/bash

~/submit.sh -m 8G -c 48:00:00 -n ea -d ~/jobs/07.10.2014_compl_equiv/frib.cmpl_eq -q mpi.q -s 2G -p 2 ~/jobs/07.10.2014_compl_equiv/compl_equiv.sh 1000
~/submit.sh -m 8G -c 48:00:00 -n ea -d ~/jobs/07.10.2014_compl_equiv/frib.m.cmpl_eq -q mpi.q -s 2G -p 2 ~/jobs/07.10.2014_compl_equiv/compl_equiv.sh 1000
~/submit.sh -m 8G -c 48:00:00 -n ea -d ~/jobs/07.10.2014_compl_equiv/frib.m.m2.cmpl_eq -q mpi.q -s 2G -p 2 ~/jobs/07.10.2014_compl_equiv/compl_equiv.sh 1000
~/submit.sh -m 8G -c 48:00:00 -n ea -d ~/jobs/07.10.2014_compl_equiv/frib.macc.cmpl_eq -q mpi.q -s 2G -p 2 ~/jobs/07.10.2014_compl_equiv/compl_equiv.sh 1000
~/submit.sh -m 8G -c 48:00:00 -n ea -d ~/jobs/07.10.2014_compl_equiv/frib.r.cmpl_eq -q mpi.q -s 2G -p 2 ~/jobs/07.10.2014_compl_equiv/compl_equiv.sh 1000
~/submit.sh -m 8G -c 48:00:00 -n ea -d ~/jobs/07.10.2014_compl_equiv/frib.r2ifc.cmpl_eq -q mpi.q -s 2G -p 2 ~/jobs/07.10.2014_compl_equiv/compl_equiv.sh 1000
