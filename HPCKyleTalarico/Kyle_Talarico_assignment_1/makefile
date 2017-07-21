CC=g++

CFLAGS= -O3 -march=native -mtune=native -mavx -mavx2 
LDFLAGS= -fopenmp

main: main.cpp
	$(CC) $(CFLAGS) -o main main.cpp $(LDFLAGS)

mainIops: mainIops.cpp
	$(CC) $(CFLAGS) -o mainIops mainIops.cpp $(LDFLAGS)
