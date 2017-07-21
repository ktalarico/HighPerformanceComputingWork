#include<iostream>
#include<omp.h>
#include<chrono>
#include<stdio.h>
#include<math.h>



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
  double r, g, b;
};

__device__ int maxNew(int a, int b){
  return (a<b)?b:a;
}

__device__ int minNew(int a, int b){
  return (a>b)?b:a;
}

__device__ void cpyPix(double p[3], Image img, int x, int y){
  p[0] = (double)img.r[y*(img.x)+x];
  p[1] = (double)img.g[y*(img.x)+x];
  p[2] = (double)img.b[y*(img.x)+x];
}

__global__ void rotateImage(Image base, Image result, double theta){
  int y = base.y, x = base.x;
  int dim = blockIdx.x * blockDim.x + threadIdx.x;
  float cX = x/2.0, cY = y/2.0;
  float cTheta = cos(theta);
  float sTheta = sin(theta);
  //printf("dim: %d\nblock: %d\n", dim, blockIdx.x);
  if(dim<x*y){
    float yt = cY-dim/x;
 
      float xt = dim%x-cX;
      //std::cout<<"xt: "<<xt<<"\tyt: "<<yt<<"\n";
      float xprime = xt*cTheta+yt*sTheta;
      float yprime = yt*cTheta-xt*sTheta;
      //std::cout<<"centx: "<<xprime<<"\tcenty: "<<yprime<<"\n";
      xprime += cX;
      yprime += cY;
      //std::cout<<"disx: "<<xprime<<"\tdisy: "<<yprime<<"\n";
      int q0x, q0y, q1x, q1y, q2x, q2y, q3x, q3y;
      
      q0x = (int)floor(xprime);
      q0y = (int)floor(yprime);
      q0x = maxNew(0, q0x);
      q0x = minNew(q0x, x-1);
      q0y = maxNew(0, q0y);
      q0y = minNew(q0y, y-1);

      q1x = (int)ceil(xprime);
      q1x = maxNew(0, q1x);
      q1x = minNew(q1x, x-1);
      q1y = q0y;

      q2x = q0x;
      q2y = ceil(yprime);
      q2y = maxNew(0, q2y);
      q2y = minNew(q2y, y-1);
      q3x = q1x;
      q3y = q2y;
      //std::cout<<"i: "<<i<<"\tj: "<<j<<"\n";
      //std::cout<<"xp: "<<xprime<<"\typ: "<<yprime<<"\n";
      //std::cout<<"00x: "<<q0x<<"\t"<<"01x: "<<q1x<<"\t"<<"10x: "<<q2x<<"\t"<<"11x: "<<q3x<<"\n"<<"00y: "<<q0y<<"\t"<<"01y: "<<q1y<<"\t"<<"10y: "<<q2y<<"\t"<<"11y: "<<q3y<<"\n";
      float f1, f2, f3, f4;
      double P[3], R1[3], R2[3], q0[3], q1[3], q2[3], q3[3];      

      cpyPix(q0, base, q0x, q0y);
      cpyPix(q1, base, q1x, q1y);
      cpyPix(q2, base, q2x, q2y);
      cpyPix(q3, base, q3x, q3y);
      //std::cout<<"q0r: "<<q0.r<<"\tq0g: "<<q0.g<<"\tq0b: "<<q0.b<<"\n";
      //std::cout<<"q1r: "<<q1.r<<"\tq1g: "<<q1.g<<"\tq1b: "<<q1.b<<"\n";
      //std::cout<<"q2r: "<<q2.r<<"\tq2g: "<<q2.g<<"\tq2b: "<<q2.b<<"\n";
      //std::cout<<"q3r: "<<q3.r<<"\tq3g: "<<q3.g<<"\tq3b: "<<q3.b<<"\n";
      if(q3x == q2x){
	f1=1;
	f2=0;
      }else{
	f1 = ((q3x - xprime)/(q3x - q2x));
	f2 = ((xprime - q2x)/(q3x - q2x));
      }

      R1[0] = q2[0]*f1+q3[0]*f2;
      R1[1] = q2[1]*f1+q3[1]*f2;
      R1[2] = q2[2]*f1+q3[2]*f2;

      R2[0] = q0[0]*f1+q1[0]*f2;
      R2[1] = q0[1]*f1+q1[1]*f2;
      R2[2] = q0[2]*f1+q1[2]*f2;
      //std::cout<<R1.r<<"\t"<<R1.g<<"\t"<<R1.b<<"\n";
      if(q0y==q2y){
	f3 = 1;
	f4 = 0;
      }else{
	f3 = (((q2y-yprime)/(q2y-q0y)));
	f4 = (((yprime-q0y)/(q2y-q0y)));
      }

      P[0] = R1[0]*f3 + R2[0]*f4;
      P[1] = R1[1]*f3 + R2[1]*f4;
      P[2] = R1[2]*f3 + R2[2]*f4;

      P[0] = minNew(255.0, P[0]);
      P[0] = maxNew(P[0], 0.0);
      P[1] = minNew(255.0, P[1]);
      P[1] = maxNew(P[1], 0.0);
      P[2] = minNew(255.0, P[2]);
      P[2] = maxNew(P[2], 0.0);
      //std::cout<<P.r<<"\t"<<P.g<<"\t"<<P.b<<"\n";
      //printf("y: %d\tx: %d\tdim: %d\n", dim/x, dim%x, dim);
	result.r[((y-1)-(dim/x))*x+(dim%x)]=(uint8_t)P[0];
	result.g[((y-1)-(dim/x))*x+(dim%x)]=(uint8_t)P[1];
	result.b[((y-1)-(dim/x))*x+(dim%x)]=(uint8_t)P[2];
	//std::cout<<(int)result->r[((y-1)-i)*x+(j)]<<"\t"<<(int)result->g[((y-1)-i)*x+(j)]<<"\t"<<(int)result->b[((y-1)-i)*x+(j)]<<"\n";
    
  
  }
}

int main(int argc, char* argv[]){
  
  long long int x = 0, y = 0;
  int numRot, blockSize=32, streamNum = 1;
  double theta = 0.;
  double allTheta[100];
  x = atoll(argv[1]);
  y = atoll(argv[2]);
  theta = atof(argv[3]);
  numRot = atoi(argv[4]);
  blockSize = atoi(argv[5]);
  streamNum = atoi(argv[6]);
  
  std::chrono::steady_clock::time_point start, end;
  
  Image baseImage = {};
  
  uint8_t* data = (uint8_t *)malloc(x*y*3*sizeof(uint8_t));
  
  for(int i=0; i<100; i++){
    allTheta[i] = theta;
  }

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
  
  cudaStream_t streams[streamNum];
  for(int i=0; i<streamNum; i++){
    cudaStreamCreate(&streams[i]);
  }
  std::cout<<"streams"<<std::endl;
  Image centered= {};
  Image d_centered = {};
  std::cout<<"empty structs"<<std::endl;
  cudaMallocHost((void **)&(centered.r), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  cudaMallocHost((void **)&(centered.g), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  cudaMallocHost((void **)&(centered.b), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  centered.x = rotSizex;
  centered.y = rotSizey;
  centered.n = 3;
  
  cudaMalloc((void **)&(d_centered.r), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif 
 cudaMalloc((void **)&(d_centered.g), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  cudaMalloc((void **)&(d_centered.b), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  d_centered.x = rotSizex;
  d_centered.y = rotSizey;
  d_centered.n = 3;
  Image result= {};
  Image d_result = {};
  cudaMallocHost((void **)&(result.r), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  cudaMallocHost((void **)&(result.g), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  cudaMallocHost((void **)&(result.b), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
  result.x = rotSizex;
  result.y = rotSizey;
  result.n = 3;
  
  cudaMalloc((void **)&(d_result.r), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMalloc((void **)&(d_result.g), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMalloc((void **)&(d_result.b), rotSizex*rotSizey*sizeof(uint8_t));
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  d_result.x = rotSizex;
  d_result.y = rotSizey;
  d_result.n = 3;

  memset(centered.r, 0, rotSizex*rotSizey*sizeof(uint8_t));
  memset(centered.g, 0, rotSizex*rotSizey*sizeof(uint8_t));
  memset(centered.b, 0, rotSizex*rotSizey*sizeof(uint8_t));
  
  int offsetx = (centered.x/2-baseImage.x/2);
  int offsety = (centered.y/2-baseImage.y/2);
  
  start = std::chrono::steady_clock::now();
  for(int k=0; k<numRot; k++){
    #pragma omp parallel for collapse(2)
    for(long long int i=0;i<y; i++){
      for(long long int j=0; j<x; j++){
	centered.r[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.r[i*x+j];
        centered.g[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.g[i*x+j];
	centered.b[((i+offsety)*rotSizex)+(j+offsetx)] = baseImage.b[i*x+j];
      }
    }
   
  cudaMemcpyAsync((void *)d_centered.r, (void *)centered.r, rotSizex*rotSizey*sizeof(uint8_t), cudaMemcpyHostToDevice, streams[k%streamNum]);
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMemcpyAsync((void *)d_centered.g, (void *)centered.g, rotSizex*rotSizey*sizeof(uint8_t), cudaMemcpyHostToDevice, streams[k%streamNum]);
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMemcpyAsync((void *)d_centered.b, (void *)centered.b, rotSizex*rotSizey*sizeof(uint8_t), cudaMemcpyHostToDevice, streams[k%streamNum]);
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  for(int l=0; l<100; l++){
    rotateImage<<<((rotSizex*rotSizey)+(blockSize-1))/blockSize, blockSize, 0, streams[k%streamNum]>>>(d_centered, d_result, allTheta[l]);
  }
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMemcpyAsync((void *)result.r, (void *)d_result.r, rotSizex*rotSizey*sizeof(uint8_t), cudaMemcpyDeviceToHost, streams[k%streamNum]);
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMemcpyAsync((void *)result.g, (void *)d_result.g, rotSizex*rotSizey*sizeof(uint8_t), cudaMemcpyDeviceToHost, streams[k%streamNum]);
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
  cudaMemcpyAsync((void *)result.b, (void *)d_result.b, rotSizex*rotSizey*sizeof(uint8_t), cudaMemcpyDeviceToHost, streams[k%streamNum]);
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif  
}
  cudaDeviceSynchronize();
  end = std::chrono::steady_clock::now();
#ifdef DEBUG 
std::cout<<__LINE__<<" Error: "<<cudaGetErrorString(cudaGetLastError())<<std::endl;
#endif
 uint8_t *outdata;
 outdata = (uint8_t *)malloc(rotSizex*rotSizey*3*sizeof(uint8_t));
  for(long long int i=0; i<rotSizey; i++){
    for(long long int j=0; j<rotSizex; j++){
      outdata[i*rotSizex*3+j*3] = result.r[i*result.x+j];
      outdata[i*rotSizex*3+j*3+1] = result.g[i*result.x+j];
      outdata[i*rotSizex*3+j*3+2] = result.b[i*result.x+j];
      //std::cout<<(int)outdata[i*rotSizex*3+j*3]<<" "<<(int)outdata[i*rotSizex*3+j*3+1]<<" "<<(int)outdata[i*rotSizex*3+j*3+2]<<"\n";
    }
  }
  //std::cout<<rotSizex<<"\t"<<rotSizey<<"\t"<<outdata[1]<<std::endl;
  stbi_write_png("rotated.png", rotSizex, rotSizey, 3, outdata, rotSizex*3);
  
  std::chrono::duration<double> rotate_time = std::chrono::duration_cast<std::chrono::duration<double>>(end-start);
  
  double rotInMs = rotate_time.count();
  std::cout<<"Rotation:\t"<<rotInMs<<std::endl;
  std::cerr<<numRot*100<<"\t"<<rotInMs<<std::endl;
  
  cudaFree(d_centered.r);
  cudaFree(d_centered.g);
  cudaFree(d_centered.b);
  cudaFree(d_result.r);
  cudaFree(d_result.g);
  cudaFree(d_result.b);
  free(data);
  free(outdata);
  cudaFreeHost(centered.r);
  cudaFreeHost(centered.g);
  cudaFreeHost(centered.b);
  cudaFreeHost(result.r);
  cudaFreeHost(result.g);
  cudaFreeHost(result.b);
  free(baseImage.r);
  free(baseImage.g);
  free(baseImage.b);
  
}

