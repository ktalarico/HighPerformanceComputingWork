#include <stdio.h>
#include <omp.h>
#include <immintrin.h>
#include <sys/time.h>

int main(){
  long n = 1000l*1000l*1000l*100l;
  __m256i *emem=(__m256i *)malloc(sizeof(int)*8);
  __m256i *fmem=(__m256i *)malloc(sizeof(int)*8);
  __m256i *gmem=(__m256i *)malloc(sizeof(int)*8);
  struct timeval start, end;
  gettimeofday(&start, NULL);
  #pragma omp parallel
  {
  __m256i a = _mm256_set_epi32 ( 1, 20, 3, 4, 4, 3, 2, 1);
  __m256i b = _mm256_set_epi32 ( 1, 23, 3, 4, 4, 3, 2, 1);
  __m256i c = _mm256_set_epi32 ( 1, 24, 3, 4, 4, 3, 2, 1);
  __m256i d = _mm256_set_epi32 ( 1, 25, 3, 4, 4, 3, 2, 1);
  __m256i e = _mm256_set_epi32 ( 1, 26, 3, 4, 4, 3, 2, 1);
  
#pragma omp for schedule(dynamic, 10000000)
  for(long i=0; i<n; i++){
    c = _mm256_add_epi32(a, e);
    d = _mm256_add_epi32(a, d);
    e = _mm256_mul_epi32(a, e);
    d = _mm256_add_epi32(a, c);
    d = _mm256_add_epi32(c, d);
  }
  _mm256_storeu_si256(emem, c);
  _mm256_storeu_si256(fmem, d);
  _mm256_storeu_si256(gmem, e);
  }
  gettimeofday(&end, NULL);
  __m256i a = _mm256_loadu_si256(emem);
  __m256i b = _mm256_loadu_si256(fmem);
  __m256i c = _mm256_loadu_si256(gmem);
  float seconds = ((end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1000000.0);
  printf("Iops: %f\n",(8*5*(double)n)/seconds);
  printf("Seconds: %f\n", seconds);
}
