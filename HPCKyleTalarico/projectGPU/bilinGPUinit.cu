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

#define GPUDIM threadIdx.x + blockIdx.x * blockDim.x

struct Image {
  uint8_t *r, *g, *b;
  int x, y, n;
};

struct Pixel {
  double r, g, b;
};

int max(int a, int b){
  return (a<b)?b:a;
}

int min(int a, int b){
  return (a>b)?b:a;
}

void cpyPix(Pixel *p, Image *img, int x, int y){
  p->r = (double)img->r[y*(img->x)+x];
  p->g = (double)img->g[y*(img->x)+x];
  p->b = (double)img->b[y*(img->x)+x];
}

__global__ void rotateImage(Image *base, Image *result, double theta){

  int y = result->y, x = result->x;
  float cX = base->x/2.0, cY = base->y/2.0;
  float cTheta = cos(theta);
  float sTheta = sin(theta);

if((GPUDIM) > x*y){
  for(int i=0; i<y; i++){
    float yt = cY-(GPUDIM/x);
    for(int j=0; j<x; j++){
      float xt = j-(GPUDIM%x);
      
      float xprime = xt*cTheta+yt*sTheta;
      float yprime = yt*cTheta-xt*sTheta;
      
      xprime += cX;
      yprime += cY;
      
      int q0x, q0y, q1x, q1y, q2x, q2y, q3x, q3y;

      q0x = (int)floor(xprime);
      q0y = (int)floor(yprime);
      q0x = max(0, q0x);
      q0x = min(q0x, base->x-1);
      q0y = max(0, q0y);
      q0y = min(q0y, base->y-1);

      q1x = (int)ceil(xprime);
      q1x = max(0, q1x);
      q1x = min(q1x, base->x-1);
      q1y = q0y;

      q2x = q0x;
      q2y = ceil(yprime);
      q2y = max(0, q2y);
      q2y = min(q2y, base->y-1);
      q3x = q1x;
      q3y = q2y;

      float f1, f2, f3, f4;
      Pixel P, R1, R2, q0, q1, q2, q3;

      cpyPix(&q0, base, q0x, q0y);
      cpyPix(&q1, base, q1x, q1y);
      cpyPix(&q2, base, q2x, q2y);
      cpyPix(&q3, base, q3x, q3y);

      if(q3x == q2x){
	f1=1;
	f2=0;
      }else{
	f1 = ((q3x - xprime)/(q3x - q2x));
	f2 = ((xprime - q2x)/(q3x - q2x));
      }

      R1.r = q2.r*f1+q3.r*f2;
      R1.g = q2.g*f1+q3.g*f2;
      R1.b = q2.b*f1+q3.b*f2;

      R2.r = q0.r*f1+q1.r*f2;
      R2.g = q0.g*f1+q1.g*f2;
      R2.b = q0.b*f1+q1.b*f2;
      
      if(q0y==q2y){
	f3 = 1;
	f4 = 0;
      }else{
	f3 = (((q2y-yprime)/(q2y-q0y)));
	f4 = (((yprime-q0y)/(q2y-q0y)));
      }

      P.r = R1.r*f3 + R2.r*f4;
      P.g = R1.g*f3 + R2.g*f4;
      P.b = R1.b*f3 + R2.b*f4;

      P.r = min(255.0, P.r);
      P.r = max(P.r, 0.0);
      P.g = min(255.0, P.g);
      P.g = max(P.g, 0.0);
      P.b = min(255.0, P.b);
      P.b = max(P.b, 0.0);
      
      
	result->r[((y-1)-(GPUDIM/x)*x+(GPUDIM%x)]=(uint8_t)P.r;
	result->g[((y-1)-(GPUDIM/x)*x+(GPUDIM%x)]=(uint8_t)P.g;
	result->b[((y-1)-(GPUDIM/x)*x+(GPUDIM%x)]=(uint8_t)P.b;
	
      
    }
  }
  }
}
}

int main(int argc, char* argv[]){
  long long int x = 0, y = 0;
  int numRot, block;
  double theta = 0.;
  x = atoll(argv[1]);
  y = atoll(argv[2]);
  theta = atof(argv[3]);
  numRot = atoi(argv[4])*100;
  block = atoi(argv[5]);
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
  Image centered= {};
  Image d_centered = {};
  Image result= {};
  Image d_result={};
  
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
 
  
  
  centered.x = rotSizex;
  centered.y = rotSizey;
  centered.n = 3;
  cudaMalloc(d_centered.r, rotSizex*rotSizey*sizeof(uint8_t));
  cudaMalloc(d_centered.g, rotSizex*rotSizey*sizeof(uint8_t));
  cudaMalloc(d_centered.b, rotSizex*rotSizey*sizeof(uint8_t));
  cudaMalloc(d_centered.x, sizeof(int));
  cudaMalloc(d_centered.y, sizeof(int));
  cudaMalloc(d_centered.n, sizeof(int));
  cudaMemcpy(d_centered.x, centered.x, sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy(d_centered.y, centered.y, sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy(d_centered.n, centered.n, sizeof(int), cudaMemcpyHostToDevice);
  result.r = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  result.g = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  result.b = (uint8_t *)malloc(rotSizex*rotSizey*sizeof(uint8_t));
  result.x = rotSizex;
  result.y = rotSizey;
  result.n = 3;
  cudaMalloc(d_result.r, rotSizex*rotSizey*sizeof(uint8_t));
  cudaMalloc(d_result.g, rotSizex*rotSizey*sizeof(uint8_t));
  cudaMalloc(d_result.b, rotSizex*rotSizey*sizeof(uint8_t));
  cudaMalloc(d_result.x, sizeof(int));
  cudaMalloc(d_result.y, sizeof(int));
  cudaMalloc(d_result.n, sizeof(int));
  int offsetx = (centered.x/2-baseImage.x/2);
  int offsety = (centered.y/2-baseImage.y/2);
  start = std::chrono::steady_clock::now();
  for(int i=0; i<numRot; i++){
   #pragma omp parallel for
    for(long long int i=0;i<y; i++){
    for(long long int j=0; j<x; j++){
      if(((i+offsety)*rotSizex)+(j+offsetx)<rotSizex*rotSizey){
	centered.r[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.r[i*x+j];
        centered.g[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.g[i*x+j];
	centered.b[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.b[i*x+j];
      }else{
	centered.r[i*rotSizex*j] = 0;
	centered.g[i*rotSizex*j] = 0;
	centered.b[i*rotSizex*j] = 0;
      }
    }
  }

  cudaMemcpy(d_centered.r, centered.r, y*x*sizeof(uint8_t), cudaMemcpyHostToDevice);
  cudaMemcpy(d_centered.g, centered.g, y*x*sizeof(uint8_t), cudaMemcpyHostToDevice);
  cudaMemcpy(d_centered.b, centered.b, y*x*sizeof(uint8_t), cudaMemcpyHostToDevice);

  rotateImage<<<(centered.x*centered.y+(block-1))/block, block>>>(&d_centered, &d_result, theta);

  cudaMemcpy(result.r, d_result.r, y*x*sizeof(uint8_t), cudaMemcpyDeviceToHost);
  cudaMemcpy(result.g, d_result.g, y*x*sizeof(uint8_t), cudaMemcpyDeviceToHost);
  cudaMemcpy(result.b, d_result.b, y*x*sizeof(uint8_t), cudaMemcpyDeviceToHost);
  free(centered.r);
  free(centered.g);
  free(centered.b);
  free(result.r);
  free(result.g);
  free(result.b);
  cudaFree(d_centered.r);
  cudaFree(d_centered.g);
  cudaFree(d_centered.b);
  cudaFree(d_result.r);
  cudaFree(d_result.g);
  cudaFree(d_result.b);
}
  end = std::chrono::steady_clock::now();
/*
uint8_t* outdata = (uint8_t *)malloc(rotSizex*rotSizey*3*sizeof(uint8_t));
  for(long long int i=0; i<rotSizey; i++){
    for(long long int j=0; j<rotSizex; j++){
      outdata[i*rotSizex*3+j*3] = result.r[i*result.x+j];
      outdata[i*rotSizex*3+j*3+1] = result.g[i*result.x+j];
      outdata[i*rotSizex*3+j*3+2] = result.b[i*result.x+j];
      //std::cout<<(int)outdata[i*rotSizex*3+j*3]<<" "<<(int)outdata[i*rotSizex*3+j*3+1]<<" "<<(int)outdata[i*rotSizex*3+j*3+2]<<"\n";
    }
  }
  
  stbi_write_png("rotated.png", rotSizex, rotSizey, 3, outdata, rotSizex*3);
  */
  std::chrono::duration<double> rotate_time = std::chrono::duration_cast<std::chrono::duration<double>>(end-start);
  
  double rotInMs = rotate_time.count();
  std::cout<<"Rotation:\t"<<rotInMs<<std::endl;
  std::cerr<<numRot<<"\t"<<rotInMs<<std::endl;
  free(data);
  free(outdata);
  
  free(baseImage.r);
  free(baseImage.g);
  free(baseImage.b);
  
}

