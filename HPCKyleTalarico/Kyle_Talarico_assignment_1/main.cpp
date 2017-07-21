#include <stdio.h>
#include <sys/time.h>
#include <omp.h>
#include <immintrin.h>

int main(){
 
  struct timeval beg, end;
  float* cmem =(float *)malloc(sizeof(float)*8);
  float* dmem =(float *)malloc(sizeof(float)*8);
  float* emem =(float *)malloc(sizeof(float)*8);
  float* fmem =(float *)malloc(sizeof(float)*8);
  float* gmem =(float *)malloc(sizeof(float)*8);
  long n=1000l *1000l *1000l*100l;

  gettimeofday(&beg, NULL);
#pragma omp parallel
  {
    //eleminate dependencies
    __m256 a = _mm256_set_ps(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    __m256 b = _mm256_set_ps(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    __m256 e = _mm256_set_ps(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    __m256 f = _mm256_set_ps(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    __m256 g = _mm256_set_ps(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    __m256 c = _mm256_setzero_ps();
    __m256 d = _mm256_setzero_ps();
#pragma omp for schedule(dynamic, 10000000)
  for(long i=0; i<n; i++){
  c = _mm256_fmadd_ps(a, b, c);
  d = _mm256_fmadd_ps(a, b, d);
  e = _mm256_fmadd_ps(a, b, e);
  f = _mm256_fmadd_ps(a, b, f);
  g = _mm256_fmadd_ps(a, b, g);
 
  }
   _mm256_storeu_ps (cmem, c);
   _mm256_storeu_ps (dmem, d);
   _mm256_storeu_ps (emem, e);
   _mm256_storeu_ps (fmem, f);
   _mm256_storeu_ps (gmem, g);
  }
  gettimeofday(&end, NULL);
  __m256 c = _mm256_loadu_ps(cmem);
  __m256 d = _mm256_loadu_ps(dmem);
  __m256 e = _mm256_loadu_ps(emem);
  __m256 f = _mm256_loadu_ps(fmem);
  __m256 g = _mm256_loadu_ps(gmem);
  double seconds = ((end.tv_sec-beg.tv_sec)+((end.tv_usec-beg.tv_usec)/1000000.0));
  printf("Flops: %f\n", ((double)n*5*8*2)/seconds);
  printf("Secons: %f\n", seconds);
}
