CC=nvcc
CFLAGS=-arch=compute_35 -code=sm_35 -lineinfo -lm -std=c++11

test: bilinGPU.cu makefile
	$(CC) $(CFLAGS) -o test bilinGPU.cu

testImprv: impGPU.cu makefile
	$(CC) $(CFLAGS) -o testImprv impGPU.cu
