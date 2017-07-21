#include<iostream>
#include<math.h>
#include<stdlib.h>
int main(int argc, char* argv[]){
  double x, y, rotx, roty;
  int z, n;
  x=atof(argv[1]);
  y=atof(argv[2]);
  z=3;
  n=atoi(argv[3]);
  rotx=ceil(sqrt(x*x + y*y));
  roty=rotx;
  for(int i=0; i<n; i++){
    std::cout<<(i*100)<<"\t"<<((2*rotx*roty*z*i)/(12.0*1000*1000*1000))<<std::endl;
  }
  
}
