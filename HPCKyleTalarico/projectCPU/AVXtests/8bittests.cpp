#include<iostream>
#include<immintrin.h>

int main() {
  __m256i a;
  __m256i b, shift, mask, index;
  unsigned char temp[8]={0,1,2,3,4,5,6,7};
  unsigned char dest[8];
  int check[8];
  mask = _mm256_set_epi32(0xFF000000, 0x00FF0000, 0x0000FF00, 0x000000FF, 0xFF000000, 0x00FF0000, 0x0000FF00, 0x000000FF);
  index = _mm256_set_epi32(4,4,4,4,0,0,0,0);
  shift = _mm256_set_epi32(24,16,8,0,24,16,8,0);
  a = _mm256_i32gather_epi32(temp, index, 1);
  
  b = _mm256_and_si256(mask, a);
  b = _mm256_srlv_epi32(b, shift);
  
  
  
  _mm256_storeu_si256((__m256i *)check, b);
  _mm256_storeu_si256((__m256i *)dest, b);
  for(int i=0; i<8; i++){
  std::cout<<(int)check[i]<<"\n"<<std::endl;
  }
  
  
}
