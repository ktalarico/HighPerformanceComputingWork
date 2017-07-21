#!/bin/sh
#PBS -q mamba
#PBS -l nodes=1:ppn=16
#PBS -l walltime=0:30:00
./testAVX 1024 1024 10 1
