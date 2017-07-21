#include<iostream>
#include<chrono>

__global__ void expansion(float *a, float *poly, long long int n, long long int degree, int i, int streamSize, int block){
	
	if((i*streamSize*block)+threadIdx.x+blockIdx.x*blockDim.x < n){
	float temp = a[threadIdx.x+blockIdx.x*blockDim.x];
	float xpow = 1;
	for (long long int i=0; i<degree; i++){
      	    a[threadIdx.x+blockIdx.x*blockDim.x] += xpow*poly[i];
      	    xpow *= temp;
      	}
	}
}

int main(int argc, char* argv[]){
    using namespace std::chrono;
    long long int size = atoll(argv[1]);
    long long int degree = atoll(argv[2]);
    int block = atoi(argv[3]);
    int streamCnt = atoi(argv[4]);
    int streamSize = atoi(argv[5]);
    long long int byten, bytepoly;    
    
    float *a, *d_a, *poly, *d_poly;
    long long int numBlocks = (size+(block-1))/block;
    long long int streamBlk = (numBlocks+(streamSize-1))/streamSize;
    byten = streamSize*block*sizeof(float);
    bytepoly = (degree+1)*sizeof(float);
    
    cudaStream_t streams[streamCnt];
    for(int i=0; i<streamCnt; i++){
    	    cudaStreamCreate(&streams[i]);
    }
    cudaMallocHost((void **)&a, size*sizeof(float));    
    cudaMallocHost((void **)&poly, bytepoly);
    //std::cout<<__LINE__<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
    steady_clock::time_point start, end;
    
    cudaMalloc((void **)&d_a, streamCnt*byten);
    cudaMalloc((void **)&d_poly, bytepoly);
    //std::cout<<__LINE__<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
    for(long long int i=0; i<size; i++){
       a[i] = 1.;
    }
    for(long long int i=0; i<degree+1; i++){
       poly[i] = 1.;
    }
    start = steady_clock::now();
    cudaMemcpyAsync(d_poly, poly, bytepoly, cudaMemcpyHostToDevice);
    //std::cout<<__LINE__<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
    for(long long int i=0; i<streamBlk; i++){
    	if(i*streamSize*block+streamSize*block < size){    
	        cudaMemcpyAsync(&d_a[i%streamCnt*streamSize*block], &a[i*streamSize*block], byten, cudaMemcpyHostToDevice, streams[i%streamCnt]);
		//std::cout<<i<<"\t"<<i*streamSize*block<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
		expansion<<<streamSize, block, 0, streams[i%streamCnt]>>>(&d_a[i%streamCnt*streamSize*block], d_poly, size, degree, i, streamSize, block);
		//std::cout<<i<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
		cudaMemcpyAsync(&a[i*streamSize*block], &d_a[i%streamCnt*streamSize*block], byten, cudaMemcpyDeviceToHost, streams[i%streamCnt]);
		//std::cout<<i<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
	}else{
		cudaMemcpyAsync(&d_a[i%streamCnt*streamSize*block], &a[i*streamSize*block], (size-i*streamSize*block)*sizeof(float), cudaMemcpyHostToDevice, streams[i%streamCnt]);
		//std::cout<<i<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
		expansion<<<streamSize, block, 0, streams[i%streamCnt]>>>(&d_a[i%streamCnt*streamSize*block], d_poly, size, degree, i, streamSize, block);
		//std::cout<<i<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
		cudaMemcpyAsync(&a[i*streamSize*block], &d_a[i%streamCnt*streamSize*block], (size-i*streamSize*block)*sizeof(float), cudaMemcpyDeviceToHost, streams[i%streamCnt]);
		//std::cout<<i<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
    	}
    }
    cudaDeviceSynchronize();
    std::cout<<__LINE__<<"\t"<<cudaGetErrorString(cudaGetLastError())<<std::endl;
    end = steady_clock::now();
    
    duration<double> elapsed_time = duration_cast<duration<double>>(end-start);
    std::cout<<size<<"\t"<<degree<<"\t"<<(size*degree*sizeof(float))/elapsed_time.count()<<std::endl;
    for(int i=0; i<streamCnt; i++){
    cudaStreamDestroy(streams[i]);
    }
    cudaFree(d_a);
    cudaFree(d_poly);
}