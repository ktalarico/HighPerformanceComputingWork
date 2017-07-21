#!/bin/sh
#PBS -l nodes=1:ppn=16
#PBS -q mamba
./write 32 30000
./write 128 30000
./write 1024 20000
./write 4096 20000
./write 32768 4000
./write 1638400 3000
