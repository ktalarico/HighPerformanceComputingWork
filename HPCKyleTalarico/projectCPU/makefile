CC=g++
CFLAGS=-march=native -mtune=native -fopenmp -lm -std=c++11 -g -O1

test: bilin.cpp makefile
	$(CC) $(CFLAGS) -o test bilin.cpp

testAVX: bilinAVX.cpp makefile
	$(CC) $(CFLAGS) -o testAVX bilinAVX.cpp
