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
    std::cout<<(i)<<"\t"<<((37.0*rotx*roty*z*i)+(i*2.0*x*y*z))/(8.7*1000*1000*1000*1000)<<std::endl;
  }
  for(int i=0; i<n; i++){
    std::cerr<<(i)<<"\t"<<((5.0*rotx*roty*z*i)+(i*x*y*z))/(400.0*1000*1000*1000)<<std::endl;
  }
}
