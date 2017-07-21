#!/bin/sh
#PBS -q mamba
#PBS -l nodes=1:ppn=7:gpus=1
#PBS -l walltime=1:00:00
./poly 512 1 128
./poly 4096 1 128
./poly 16384 1 128
./poly 65536 1 128
./poly 131072 1 128
./poly 262144 1 128
./poly 524288 1 128
./poly 1048576 1 128
./poly 4194304 1 128
./poly 2147483647 1 128
