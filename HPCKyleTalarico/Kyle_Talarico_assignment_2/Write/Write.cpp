#include<iostream>
#include<stdlib.h>
#include<chrono>
#include<ctime>
#include<omp.h>
#include<immintrin.h>
int main(int argc, char* argv[]){
  using namespace std::chrono;
  steady_clock::time_point start, end;
  int n = atoi(argv[1]);
  int m = atoi(argv[2]);
  int P;
  start = steady_clock::now();
  #pragma omp parallel
  {
    float *a;
    int p = omp_get_thread_num();
    P = omp_get_num_threads();
    __m256 zero = _mm256_setzero_ps();
    posix_memalign((void **)&a, 32, n*sizeof(float));
    if(p==0)
      {
	
      }
    for(int j=0; j<m;j++){
    for(int i=0; i<n;i+=8){
      _mm256_store_ps(&(a[i]), zero);
    }
    }
    std::cout<<a[0]<<"\n";
    free(a);
  }
  end = steady_clock::now();
  duration<double> elapsed_time = duration_cast<duration<double>>(end-start);
  float bandwidth = (((n/elapsed_time.count())*(P*m*sizeof(float)))/1000000.0);
  std::cout<<"Took: "<< elapsed_time.count() << "\n";
  std::cout<<(((n/elapsed_time.count())*(P*m*sizeof(float)))/1000000.0)<<" MB/s\n";
  std::cerr<<n<<"\t"<<bandwidth<<"\n";
}
