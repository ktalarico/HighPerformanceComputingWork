#!/bin/sh
#PBS -q mamba
#PBS -l nodes=1:ppn=16
./convul 4194304 768 3
./convul 4194304 768 3
./convul 4194304 768 3
./convul 4194304 768 3
./convul 4194304 768 3
