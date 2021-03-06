#include<iostream>
#include<stdlib.h>
int main(int argc, char* argv[]){
  int n, m, locs, numimgs;
  n = atoi(argv[1]);
  m = atoi(argv[2]);
  locs = atoi(argv[3]);
  numimgs = atoi(argv[4]);
  double  rotOps, Flops, Memband, pcieband;
  rotOps = 100.0*100*locs*33;
  
    
  for(int i=0; i<numimgs; i++){
    Flops = (n*m*i)/((n*(double)m*i*rotOps)/(3.5*1000*1000*1000*1000));
    Memband = (n*(double)m*i)/((n*m*i*100.0*100*locs*4)/(300.0*1000*1000*1000));
    pcieband = (n*(double)m*i)/((n*m*i*(double)locs*100.0*100)/(12.0*1000*1000*1000));
    std::cout<<i<<"\t"<<Flops<<"\t"<<Memband<<"\t"<<pcieband<<std::endl;
  }
  
}
