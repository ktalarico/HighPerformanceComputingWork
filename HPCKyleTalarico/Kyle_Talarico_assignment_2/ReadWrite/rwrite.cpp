#include<stdlib.h>
#include<omp.h>
#include<iostream>
#include<chrono>
#include<ctime>
#include<immintrin.h>

int main(int argc, char* argv[]){
  using namespace std::chrono;
  int n = atoi(argv[1]);
  int m = atoi(argv[2]);
  int P;
  __m256 out;
  steady_clock::time_point start, end;
  start = steady_clock::now();
  #pragma omp parallel
  {
    int p = omp_get_thread_num();
    P = omp_get_num_threads();
    float *a, *b;
    __m256 arv, *arvloc;
    arvloc = (__m256 *)malloc(sizeof(float*));
    posix_memalign((void **)&a, 32, n*sizeof(float));
    posix_memalign((void **)&b, 32, n*sizeof(float));
    for(int j=0; j<m; j++){
    for(int i=0; i<n; i+=8){
    arv = _mm256_load_ps(&(a[i]));
    _mm256_store_ps(&(b[i]),arv);
    }
    }
    arv = _mm256_load_ps(&(b[0]));
    std::cout<<arv[0]<<"\n";
    free(a);
    free(b);
  }
  end = steady_clock::now();
  duration<double> elapsed_time = duration_cast<duration<double>>(end-start);
  float bandwidth = ((((float)(n*2)/elapsed_time.count())*(float)(P*m))/1000000.0);
  std::cout<<"Took: "<<elapsed_time.count()<<"\n";
  std::cout<<bandwidth<<" MB/s\n";
  std::cerr<<n<<"\t"<<bandwidth<<"\n";
}
