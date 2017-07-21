#include<iostream>
#include<omp.h>
#include<immintrin.h>
#include<chrono>
#include<stdlib.h>
#include<ctime>

int main(int argc, char* argv[]){
  
  int n = atoi(argv[1]);
  __m256 fsum;
  int P = omp_get_num_threads();
  float* sumloc = (float *)malloc(sizeof(float*));
  float sum;
  int m = atoi(argv[2]);
  std::chrono::time_point<std::chrono::system_clock> start, end;
  start = std::chrono::system_clock::now();
#pragma omp parallel
  {
#pragma master
    P = omp_get_num_threads();

  float *a;
  int p = omp_get_thread_num();
  __m256 sum = _mm256_setzero_ps();
  __m256 zero = _mm256_setzero_ps();
  __m256 arv;
  
  posix_memalign((void **)&a, 32, n*sizeof(float));
  for(int i=0; i<n; i++){
    a[i] = 1.0;
  }
  for(int j=0; j<m; j++){
  for(int i=0; i<n; i+=8){
    arv = _mm256_load_ps(&(a[i]));
    sum = _mm256_add_ps(sum, arv);
  }
  }
  free(a);
  _mm256_storeu_ps(sumloc, sum);
}
  end = std::chrono::system_clock::now();
  fsum = _mm256_loadu_ps(sumloc);
  sum = fsum[0] + fsum[1] + fsum[2] + fsum[3] + fsum[4] + fsum[5] + fsum[6] + fsum[7];
  std::chrono::duration<double> elapsed_time = end-start;
  std::cout<<"Sum of a: "<< sum << "\n";
  std::cout<<P<<" threads"<<std::endl;
  std::cout<<"Took "<<elapsed_time.count()<<"\n";
  std::cout<<(((n/elapsed_time.count())*(m*P*sizeof(float)))/1000000.0)<<" MB/s\n";

  std::cerr<<n<<" "<<(((n/elapsed_time.count())*(m*P*sizeof(float)))/1000000.0)<<" MB/s\n";
 
}
