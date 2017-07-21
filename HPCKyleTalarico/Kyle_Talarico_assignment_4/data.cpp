#include<iostream>
#include<cstdlib>
int main(int argc, char* argv[]){
  float n = atof(argv[1]), m = atof(argv[2]);
  float stepsize = 1;
  float mem, comp;
  float klim = 20 + stepsize;
  for(float i=0; i<klim;i+=stepsize){
    comp = (n*m)/(((i*i)*n*m)/(1.7*1000*1000*1000*1000));
    mem = (n*m)/(((2)*n*m)/(100.0*1000*1000*1000));
    std::cout<<i<<"\t"<<comp<<"\t"<<mem<<"\n";
  }
}
