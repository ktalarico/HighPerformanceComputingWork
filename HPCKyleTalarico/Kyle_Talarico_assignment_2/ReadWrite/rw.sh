#!/bin/sh
#PBS -l nodes=1:ppn=16
#PBS -q mamba
./rwrite 16 50000
./rwrite 64 50000
./rwrite 512 50000
./rwrite 2048 50000
./rwrite 16384 4000
./rwrite 819200 3000
