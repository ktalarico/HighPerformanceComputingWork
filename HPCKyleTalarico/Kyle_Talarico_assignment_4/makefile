CFLAGS= -march=native -mtune=native -fopenmp -std=c++11 -O3
CC=g++

convul: Convolution.cpp makefile
	$(CC) $(CFLAGS) -o convul Convolution.cpp

imconv: improveConv.cpp makefile
	$(CC) $(CFLAGS) -g -o imconv improveConv.cpp
imconv.S: improveConv.cpp makefile
	$(CC) $(CFLAGS) -S -fverbose-asm -o imconv.S improveConv.cpp
clean:
	rm convul
