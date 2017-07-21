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
  long long int m = atoi(argv[1]), n = atoi(argv[2]), k = atoi(argv[3]), blockn = atoi(argv[4]), blockm = atoi(argv[5]);
  float *a, *b, *kernel;
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
  for(long long int r=0; r<(n/blockn); r++){
    for(long long int s=0; s<(m/blockm); s++){
      for(long long int i=(blockn*r+is); i<(blockn*(r+1)+is); i++){
	for(long long int j=(blockm*s+js); j<(blockm*(s+1)+js); j+=8){
	  for(long long int q=0; q<k; q++){
	    for(long long int p=0; p<k; p++){
	      av = _mm256_loadu_ps(&(a[(q+(i-is))*n+(p+(j-js))])); 
	      bv = _mm256_set1_ps(kernel[q*k+p]);
	      av = _mm256_mul_ps(av, bv);
	      cv = _mm256_add_ps(av, cv);
	      //b[((i-is)*n+(j-js))] += kernel[(q*k+p)] * a[(q+(i-is))*n+(p+(j-js))];
	    }
	  _mm256_storeu_ps(&(b[((i-is)*n+(j-js))]), cv);
	  }
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
  std::cout<<"Pixels/s:\t"<<(float)(n*m)/elapsed_time.count()<<"\n";
  std::cout<<"Computaion Max:\t"<<(float)(m*n)/((float)(m*n)*(k*k)/(1.7*1000*1000*1000*1000))<<"\n";
  std::cout<<"Memory Max:\t"<<(m*n)/(((float)(m*n*2)/(100.0*1000*1000*1000)))<<"\n";
  std::cerr<<k<<"\t"<<(float)(n*m)/elapsed_time.count()<<"\n";
}
