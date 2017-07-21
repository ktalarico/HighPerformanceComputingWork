CC=nvcc
CFLAGS=-std=c++11 -arch=compute_35 -O3

poly: polyExp.cu makefile
	$(CC) $(CFLAGS) -o poly polyExp.cu

multgpu: polyExpMultGpu.cu makefile
	$(CC) $(CFLAGS) -o multgpu polyExpMultGpu.cu
