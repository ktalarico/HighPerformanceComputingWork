CC=g++
CFLAGS=-march=native -mtune=native -fopenmp -std=c++11 -O3

memread: memRead.cpp
	$(CC) $(CFLAGS) -o memread memRead.cpp

memread.S: memRead.cpp
	$(CC) $(CFLAGS) -S -g -fverbose-asm -o memread.S memRead.cpp

clean:
	rm memread
