#include<iostream>
#include<chrono>

__global__ void expansion(float *a, float *poly, long long int n, long long int degree){
	
	if(threadIdx.x+blockIdx.x*blockDim.x < n){
	float temp = a[threadIdx.x+blockIdx.x*blockDim.x];
	float xpow = 1;
	for (int i=0; i<degree; i++){
      	    a[threadIdx.x+blockIdx.x*blockDim.x] += xpow*poly[i];
      	    xpow *= temp;
      	}
	}	
}

int main(int argc, char* argv[]){
    using namespace std::chrono;
    long long int size = atoi(argv[1]);
    long long int degree = atoi(argv[2]);
    int block = atoi(argv[3]);
    long long int bytepoly, byten;
    bytepoly = (degree+1)*sizeof(float);
    byten = size*sizeof(float);
    float *a, *d_a, *poly, *d_poly;
    long long int *d_degree;
    a = (float *)malloc(byten);
    poly = (float *)malloc(bytepoly);
    steady_clock::time_point start, end;
    cudaMalloc((void **)&d_a, byten);
    cudaMalloc((void **)&d_poly, bytepoly);
    cudaMalloc((void **)&d_degree, sizeof(int));
    for(long long int i=0; i<size; i++){
       a[i] = 1.;
    }
    for(long long int i=0; i<degree+1; i++){
       poly[i] = 2.;
    }
    start = steady_clock::now();
    cudaMemcpy(d_a, a, byten, cudaMemcpyHostToDevice);
    cudaDeviceSynchronize();
    end = steady_clock::now();
    cudaMemcpy(d_poly, poly, bytepoly, cudaMemcpyHostToDevice);
    expansion<<<((size+(block-1))/block),block>>>(d_a, d_poly, size, degree);
    printf("%s\n",cudaGetErrorString(cudaGetLastError()));
    cudaMemcpy(a, d_a, byten, cudaMemcpyDeviceToHost);
    duration<double> elapsed_time = duration_cast<duration<double>>(end-start);
    printf("%s\n",cudaGetErrorString(cudaGetLastError()));
    std::cout<<size<<"\t"<<degree<<"\t"<<size/elapsed_time.count()<<"\n";
}