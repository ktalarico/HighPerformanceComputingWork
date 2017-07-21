#!/bin/sh
#PBS -q mamba
#PBS -l nodes=1:ppn=7:gpus=1
#PBS -l walltime=00:30:00
./testImprv 256 256 10 1 128 10
./testImprv 256 256 10 5 128 10
./testImprv 256 256 10 10 128 10
./testImprv 256 256 10 15 128 10
./testImprv 256 256 10 20 128 10
./testImprv 256 256 10 25 128 10
./testImprv 256 256 10 30 128 10
./testImprv 256 256 10 35 128 10
./testImprv 256 256 10 40 128 10
./testImprv 256 256 10 45 128 10
./testImprv 256 256 10 50 128 10
./testImprv 256 256 10 55 128 10
./testImprv 256 256 10 65 128 10
./testImprv 256 256 10 70 128 10
./testImprv 256 256 10 75 128 10
./testImprv 256 256 10 80 128 10
./testImprv 256 256 10 85 128 10
./testImprv 256 256 10 90 128 10
./testImprv 256 256 10 95 128 10
./testImprv 256 256 10 100 128 10
