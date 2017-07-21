#include<iostream>
#include<stdlib.h>
int main(int argc, char* argv[]){
  int n, m, locs, numimgs;
  n = atoi(argv[1]);
  m = atoi(argv[2]);
  locs = atoi(argv[3]);
  numimgs = atoi(argv[4]);
  double totalPix;
  double rotOps = 100.0*100*locs*33;
  for(int i=0; i<numimgs; i++){
    totalPix = (float)n*m*i;
    std::cout<<i<<"\t"<<totalPix/((totalPix*rotOps)/(1.7*1000*1000*1000*1000))<<"\t"<<totalPix/((totalPix*100*100.0*(double)locs*4)/(100.0*1000*1000*1000))<<std::endl;
  }
}
