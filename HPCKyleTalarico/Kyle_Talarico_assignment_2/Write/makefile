CC=g++
CFLAGS=-march=native -mtune=native -fopenmp -std=c++11 -O3

write: Write.cpp makefile
	$(CC) $(CFLAGS) -o write Write.cpp
clean:
	rm write
