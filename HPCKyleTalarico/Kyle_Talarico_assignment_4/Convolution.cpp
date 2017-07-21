#include<iostream>
#include<cstdlib>
#include<time.h>
#include<chrono>
#include<omp.h>
#include<stdlib.h>
#include<immintrin.h>

int main(int argc, char* argv[]){
  using namespace std::chrono;
  steady_clock::time_point start, end;
  srand(time(NULL));
  long long int m = atoi(argv[1]), n = atoi(argv[2]), k = atoi(argv[3]);
  float *a, *b, *kernel;
  int ko2 = (k/2);
  long long int is = ((k-1)/2), im = (n+(k-1)/2), js = ((k-1)/2), jm = (m+(k-1)/2);
  int erra, errb, errk;
  erra = posix_memalign((void **)&a, 32, (m+(k-1))*(n+(k-1))*sizeof(float));
  errb = posix_memalign((void **)&b, 32, m*n*sizeof(float));
  errk = posix_memalign((void **)&kernel, 32, k*k*sizeof(float));
  __m256 av, bv, cv;

  for(int i=0; i<k;i++){
    for(int j=0; j<k;j++){
      kernel[(i*k+j)] = rand()%2;
    }
  }
  start = steady_clock::now();
#pragma omp parallel for collapse(2)
  for(long long int i=is; i<im; i++){
    for(long long int j=js; j<jm; j++){
      for(long long int q=0; q<k; q++){
	for(long long int p=0; p<k; p++){
	  b[((i-is)*n+(j-js))] += kernel[(q*k+p)] * a[(q+(i-is))*n+(p+(j-js))];
	}
      }
    }
  }
  end = steady_clock::now();
  free(a);
  free(b);
  free(kernel);

  duration<double> elapsed_time = duration_cast<duration<double>>(end-start);
  std::cout<<"\n"<<"n: "<<n<<"\n"<<"m: "<<m<<"\n"<<"k: "<<k<<"\n";
  std::cout<<"Pixels/s:\t"<<(n*m)/elapsed_time.count()<<"\n";
  std::cout<<"Computaion Max:\t"<<(float)(m*n)/((float)(m*n)*(k*k)/(1.7*1000*1000*1000*1000))<<"\n";
  std::cout<<"Memory Max:\t"<<(m*n)/(((float)(m*n*2))/(100.0*1000*1000*1000))<<"\n";
}
