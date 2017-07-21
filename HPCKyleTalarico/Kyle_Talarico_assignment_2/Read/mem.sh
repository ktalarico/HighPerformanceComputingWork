#!/bin/sh
#PBS -l nodes=1:ppn=16
#PBS -q mamba

./memread 32 50000

./memread 128 50000

./memread 1024 50000

./memread 2048 50000

#1MB

./memread 32768 4000

#
./memread 1638400 3000
