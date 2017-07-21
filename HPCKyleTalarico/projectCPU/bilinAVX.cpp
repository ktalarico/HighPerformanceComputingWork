#include<iostream>
#include<omp.h>
#include<chrono>
#include<stdio.h>
#include<math.h>
#include<algorithm>
#include<immintrin.h>

#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#define STB_FAILURE_USERMSG
#include "stb_image.h"
#include "stb_image_write.h"

struct Image {
  uint8_t *r, *g, *b;
  int x, y, n;
};

struct Pixel {
  __m256 r, g, b;
};

int max(int a, int b){
  return (a<b)?b:a;
}

int min(int a, int b){
  return (a>b)?b:a;
}

void cpyPix(Pixel *p, Image *img, __m256 x, __m256 y, int cycle){
  __m256i  indexv, av, bv, cv, tempv, v255;
  __m256 temppsv, imxv, v4;
  v255 = _mm256_set1_epi32(255);
  imxv = _mm256_set1_ps(img->x);
  v4 = _mm256_set1_ps(4);
  v255 = _mm256_slli_epi32(v255, cycle*8);
  temppsv = _mm256_fmadd_ps(y, imxv, x);
  temppsv = _mm256_div_ps(temppsv, v4);
  tempv = _mm256_cvtps_epi32(temppsv);
  //p->r = (float)img->r[y*(img->x)+x];
  av = _mm256_i32gather_epi32 ((int *)img->r, tempv, 1);
  av = _mm256_and_si256(av, v255);
  av = _mm256_srli_epi32(av, cycle*8);
  p->r = _mm256_cvtepi32_ps(av);
  //p->g = (float)img->g[y*(img->x)+x];
  bv = _mm256_i32gather_epi32 ((int *)img->g, tempv, 1);
  bv = _mm256_and_si256(bv, v255);
  bv = _mm256_srli_epi32(bv, cycle*8);
  p->g = _mm256_cvtepi32_ps(bv);
  //p->b = (float)img->b[y*(img->x)+x];
  cv = _mm256_i32gather_epi32 ((int *)img->b, tempv, 1);
  cv = _mm256_and_si256(cv, v255);
  cv = _mm256_srli_epi32(cv, cycle*8);
  p->b = _mm256_cvtepi32_ps(cv);
  
}

void rotateImage(Image *base, Image *result, double theta){
#pragma omp parallel
  {
  int y = result->y, x = result->x;
  float cX = base->x/2.0, cY = base->y/2.0;
  float cTheta = cos(theta);
  float sTheta = sin(theta);
  __m256 ytv, xtv, xprimev, yprimev, cThetav, sThetav, av, bv, cXv, cYv, v255, storemask, getXt;
  __m256 zerov, bXmin1, bYmin1;
  int cycle=0;
  getXt = _mm256_set_ps(7,6,5,4,3,2,1,0);
  bYmin1 = _mm256_set1_ps(base->y-1);
  bXmin1 = _mm256_set1_ps(base->x-1);
  cThetav = _mm256_set1_ps(cTheta);
  sThetav = _mm256_set1_ps(sTheta);
  cXv = _mm256_set1_ps(cX);
  cYv = _mm256_set1_ps(cY);
  v255 = _mm256_set1_ps(255);
  zerov = _mm256_setzero_ps();
  #pragma omp for
  for(int i=0; i<y; i++){
    float yt = cY-i;
    ytv = _mm256_set1_ps(yt);
    for(int j=0; j<x; j+=8){
      float xt = j-cX;
      xtv = _mm256_add_ps(xtv, getXt);
      
      //float xprime = xt*cTheta+yt*sTheta;
      //float yprime = yt*cTheta-xt*sTheta;
      av = _mm256_mul_ps(ytv, sThetav);
      xprimev = _mm256_fmadd_ps(xtv, cThetav, av);
      bv = _mm256_mul_ps(xtv, sThetav);
      yprimev = _mm256_fmsub_ps(ytv, cThetav, bv);
      
      //xprime += cX;
      //yprime += cY;
      xprimev = _mm256_add_ps(xprimev, cXv);
      yprimev = _mm256_add_ps(yprimev, cYv);
      
      __m256 q0x, q0y, q1x, q1y, q2x, q2y, q3x, q3y;

      //q0x = (int)floor(xprime);
      q0x = _mm256_floor_ps(xprimev);
      //q0y = (int)floor(yprime);
      q0y = _mm256_floor_ps(yprimev);
      //q0x = max(0, q0x);
      q0x = _mm256_max_ps(zerov, q0x);
      //q0x = min(q0x, base->x-1);
      q0x = _mm256_min_ps(q0x, bXmin1);
      //q0y = max(0, q0y);
      q0y = _mm256_max_ps(zerov, q0y);
      //q0y = min(q0y, base->y-1);
      q0y = _mm256_min_ps(q0y, bYmin1);

      //q1x = (int)ceil(xprime);
      q1x = _mm256_ceil_ps(xprimev);
      //q1x = max(0, q1x);
      q1x = _mm256_max_ps(zerov, q1x);
      //q1x = min(q1x, base->x-1);
      q1x = _mm256_min_ps(q1x, bXmin1);
      q1y = q0y;

      q2x = q0x;
      //q2y = (int)ceil(yprime);
      q2y = _mm256_ceil_ps(yprimev);
      //q2y = max(0, q2y);
      q2y = _mm256_max_ps(zerov, q2y);
      //q2y = min(q2y, base->y-1);
      q2y = _mm256_min_ps(q2y, bYmin1);
      q3x = q1x;
      q3y = q2y;
      __m256 f1, f2, f3, f4, dv, ev,  blendf1, blendf2, compeq;
      __m256i finalr, finalg, finalb, t[4][3], shiftv;
      Pixel P, R1, R2, q0, q1, q2, q3;

      cpyPix(&q0, base, q0x, q0y, cycle);
      cpyPix(&q1, base, q1x, q1y, cycle);
      cpyPix(&q2, base, q2x, q2y, cycle);
      cpyPix(&q3, base, q3x, q3y, cycle);
      
      //if(q3x == q2x){
      compeq = _mm256_cmp_ps(q3x, q2x, 0);
      
      //f1 = ((q3x - xprime)/(q3x - q2x));
      dv = _mm256_sub_ps(q3x, q2x);
      ev = _mm256_sub_ps(q3x, xprimev);
      f1 = _mm256_div_ps(ev, dv);
      //f2 = ((xprime - q2x)/(q3x - q2x));
      ev = _mm256_sub_ps(xprimev, q2x);
      f2 = _mm256_div_ps(ev, dv);
      //using a mask to implement the if statement
      blendf1= _mm256_set1_ps(1);
      blendf2= _mm256_setzero_ps();
      f1 = _mm256_blendv_ps(f1, blendf1, compeq);
      f2 = _mm256_blendv_ps(f2, blendf2, compeq);

      //R1.r = q2.r*f1+q3.r*f2;
      dv = _mm256_mul_ps(q2.r, f1);
      R1.r = _mm256_fmadd_ps(q3.r, f2, dv);
      //R1.g = q2.g*f1+q3.g*f2;
      dv = _mm256_mul_ps(q2.g, f1);
      R1.g = _mm256_fmadd_ps(q3.g, f2, dv);
      //R1.b = q2.b*f1+q3.b*f2;
      dv = _mm256_mul_ps(q2.b, f1);
      R1.b = _mm256_fmadd_ps(q3.b, f2, dv);

      //R2.r = q0.r*f1+q1.r*f2;
      dv = _mm256_mul_ps(q0.r, f1);
      R2.r = _mm256_fmadd_ps(q1.r, f2, dv);
      //R2.g = q0.g*f1+q1.g*f2;
      dv = _mm256_mul_ps(q0.g, f1);
      R2.g = _mm256_fmadd_ps(q1.g, f2, dv);
      //R2.b = q0.b*f1+q1.b*f2;
      dv = _mm256_mul_ps(q0.b, f1);
      R2.b = _mm256_fmadd_ps(q1.b, f2, dv);
      
      //if(q0y==q2y){
      compeq = _mm256_cmp_ps(q0y, q2y, 0);
      
      
      //f3 = (((q2y-yprime)/(q2y-q0y)));
      dv = _mm256_sub_ps(q2y, q0y);
      ev = _mm256_sub_ps(q2y, yprimev);
      f3 = _mm256_div_ps(ev, dv);
      //f4 = (((yprime-q0y)/(q2y-q0y)));
      ev = _mm256_sub_ps(yprimev, q0y);
      f4 = _mm256_div_ps(ev, dv);
      //same method as previous if statement
      f3 = _mm256_blendv_ps(f3, blendf1, compeq);
      f4 = _mm256_blendv_ps(f4, blendf2, compeq);
      
      //P.r = R1.r*f3 + R2.r*f4;
      dv = _mm256_mul_ps(R1.r, f3);
      P.r = _mm256_fmadd_ps(R2.r, f4, dv);
      //P.g = R1.g*f3 + R2.g*f4;
      dv = _mm256_mul_ps(R1.g, f3);
      P.g = _mm256_fmadd_ps(R2.g, f4, dv);
      //P.b = R1.b*f3 + R2.b*f4;
      dv = _mm256_mul_ps(R1.b, f3);
      P.b = _mm256_fmadd_ps(R2.b, f4, dv);
      
      //P.r = min(255.0, P.r);
      P.r = _mm256_min_ps(v255, P.r);
      //P.r = max(P.r, 0.0);
      P.r = _mm256_max_ps(P.r, zerov);
      //P.g = min(255.0, P.g);
      P.g = _mm256_min_ps(v255, P.g);
      //P.g = max(P.g, 0.0);
      P.g = _mm256_max_ps(P.g, zerov);
      //P.b = min(255.0, P.b);
      P.b = _mm256_max_ps(P.b, v255);
      //P.b = max(P.b, 0.0);
      P.b = _mm256_max_ps(P.b, zerov);
      t[cycle][0] = _mm256_cvtps_epi32(P.r);
      t[cycle][1] = _mm256_cvtps_epi32(P.g);
      t[cycle][2] = _mm256_cvtps_epi32(P.b);
      std::cout<<"cycle: "<<cycle<<"\nt[r]";      
      cycle++;
      if(cycle>=4){
	for(int j=0; j<3; j++){
	  shiftv = _mm256_cvtps_epi32(v255);
	  for(int i=1; i<4; i++){
	    shiftv = _mm256_slli_epi32(shiftv, 8);
	    t[i][j] = _mm256_slli_epi32(t[i][j], 8);
	    _mm256_blendv_epi8(t[0][j], t[i][j], shiftv);
	  }
	}
	_mm256_storeu_si256((__m256i *)&result->r[((y-1)-i)*x+(j)], t[0][0]);
	_mm256_storeu_si256((__m256i *)&result->g[((y-1)-i)*x+(j)], t[0][1]);
	_mm256_storeu_si256((__m256i *)&result->b[((y-1)-i)*x+(j)], t[0][2]);
	cycle=0;
      }
      //result->r[((y-1)-i)*x+(j)]=(uint8_t)P.r;
      //result->g[((y-1)-i)*x+(j)]=(uint8_t)P.g;
      //result->b[((y-1)-i)*x+(j)]=(uint8_t)P.b;
	
      
    }
  }
  }
}

int main(int argc, char* argv[]){
  long long int x = 0, y = 0;
  int numRot;
  double theta = 0.;
  if(argc==5){
  x = atoll(argv[1]);
  y = atoll(argv[2]);
  theta = atof(argv[3]);
  numRot = atoi(argv[4]);
  }else{
    std::cout<<"<exe> x y theta numRot"<<std::endl;
  }
  std::chrono::steady_clock::time_point start, end, start1, end1;
  
  Image baseImage = {};
  
  uint8_t* data = (uint8_t *)malloc(x*y*3*sizeof(uint8_t));
  
  for(long long int i=0; i<y; i++){
    for(long long int j=0; j<x; j++){
      if(i*x*3+j*3 < x*y*3/2){
	data[i*x*3+j*3] = 0;
	data[i*x*3+j*3+1] = 0;
	data[i*x*3+j*3+2] = 255;
      }else{
	data[i*x*3+j*3] = 255;
	data[i*x*3+j*3+1] = 0;
	data[i*x*3+j*3+2] = 0;
      }
    }
  }
  stbi_write_png("rotateme.png", x, y, 3, data, x*3);
  
  baseImage.r = (uint8_t *)malloc(y*x*sizeof(uint8_t));
  baseImage.g = (uint8_t *)malloc(y*x*sizeof(uint8_t));
  baseImage.b = (uint8_t *)malloc(y*x*sizeof(uint8_t));
  for(long long int i=0; i<y; i++){
    for(long long int j=0; j<x; j++){
      baseImage.r[i*x+j] = data[i*x*3+j*3];
      baseImage.g[i*x+j] = data[i*x*3+j*3+1];
      baseImage.b[i*x+j] = data[i*x*3+j*3+2];
    }
  }
  baseImage.x = x;
  baseImage.y = y;
  baseImage.n = 3;
  
  theta *= M_PI/180;
  int maxwah = ceil(sqrt(x*x + y*y));
  int rotSizex = maxwah;
  int rotSizey = maxwah;
  std::cout<<rotSizex<<"\t"<<rotSizey<<"\n";
 
  Image centered= {};
  centered.r = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  centered.g = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  centered.b = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  centered.x = rotSizex;
  centered.y = rotSizey;
  centered.n = 3;
  Image result= {};
  result.r = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  result.g = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  result.b = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  result.x = rotSizex;
  result.y = rotSizey;
  result.n = 3;
  int offsetx = (centered.x/2-baseImage.x/2);
  int offsety = (centered.y/2-baseImage.y/2);
  memset(centered.r, 0, rotSizex*rotSizey*sizeof(uint8_t));
  memset(centered.g, 0, rotSizex*rotSizey*sizeof(uint8_t));
  memset(centered.b, 0, rotSizex*rotSizey*sizeof(uint8_t));
  start = std::chrono::steady_clock::now();
  for(int i=0; i<numRot; i++){
   
    for(long long int i=0;i<y; i++){
    for(long long int j=0; j<x; j++){
      
	centered.r[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.r[i*x+j];
        centered.g[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.g[i*x+j];
	centered.b[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.b[i*x+j];
      
    }
  }
  
  rotateImage(&centered, &result, theta);
  }
  end = std::chrono::steady_clock::now();
  uint8_t* outdata = (uint8_t *)malloc(rotSizex*rotSizey*3*sizeof(uint8_t));
  for(long long int i=0; i<rotSizey; i++){
    for(long long int j=0; j<rotSizex; j++){
      outdata[i*rotSizex*3+j*3] = result.r[i*result.x+j];
      outdata[i*rotSizex*3+j*3+1] = result.g[i*result.x+j];
      outdata[i*rotSizex*3+j*3+2] = result.b[i*result.x+j];
      //std::cout<<(int)outdata[i*rotSizex*3+j*3]<<" "<<(int)outdata[i*rotSizex*3+j*3+1]<<" "<<(int)outdata[i*rotSizex*3+j*3+2]<<"\n";
    }
  }
  for(int i=0; i<10; i++) std::cout<<(int)result.r[i]<<"\t"<<(int)result.g[i]<<"\t"<<(int)result.b[i]<<std::endl;
  stbi_write_png("rotated.png", rotSizex, rotSizey, 3, outdata, rotSizex*3);
  
  std::chrono::duration<double> rotate_time = std::chrono::duration_cast<std::chrono::duration<double>>(end-start);
  
  double rotInMs = rotate_time.count();
  std::cout<<"Rotation:\t"<<rotInMs<<std::endl;
  std::cerr<<numRot<<"\t"<<rotInMs<<std::endl;
  free(data);
  free(outdata);
  free(centered.r);
  free(centered.g);
  free(centered.b);
  free(result.r);
  free(result.g);
  free(result.b);
  free(baseImage.r);
  free(baseImage.g);
  free(baseImage.b);
  
}
