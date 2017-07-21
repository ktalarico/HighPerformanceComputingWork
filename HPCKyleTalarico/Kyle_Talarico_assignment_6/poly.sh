#!/bin/sh
#PBS -q mamba
#PBS -l nodes=1:ppn=6:gpus=2
#PBS -l walltime=1:00:00
#PBS -l mem=110GB
./poly 500000000 1 128 16 100000
./poly 500000000 5 128 16 100000
./poly 500000000 10 128 16 100000
./poly 500000000 15 128 16 100000
./poly 500000000 20 128 16 100000
./poly 500000000 25 128 16 100000
./poly 500000000 30 128 16 100000
./poly 500000000 35 128 16 100000
./poly 500000000 40 128 16 100000
./poly 500000000 45 128 16 100000
./poly 500000000 50 128 16 100000
./poly 500000000 55 128 16 100000
./poly 500000000 60 128 16 100000
./poly 500000000 65 128 16 100000
./poly 500000000 70 128 16 100000
./poly 500000000 75 128 16 100000
./poly 500000000 80 128 16 100000
./poly 500000000 85 128 16 100000
./poly 500000000 90 128 16 100000
./poly 500000000 95 128 16 100000
./poly 500000000 100 128 16 100000