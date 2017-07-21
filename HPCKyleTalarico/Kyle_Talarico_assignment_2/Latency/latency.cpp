#include<iostream>
#include<stdlib.h>
#include<time.h>
#include<chrono>

int main(int argc, char* argv[]){
  using namespace std::chrono;
  int n = atoi(argv[1]);
  int last=n-1;
  int nextloc=0;
  float *next, *avail;
  steady_clock::time_point start, end;
  srand(time(NULL));
  posix_memalign((void **)&next, 32, n*sizeof(float));
  posix_memalign((void **)&avail, 32, n*sizeof(float));
  for(int i=0;i<n;i++){
    avail[i] = i;
  }
  for(int i=0;i<n;i++){
    int t = rand()%(last+1);
    int temp;
    next[i] = avail[t];
    temp = avail[t];
    avail[t] = avail[last];
    avail[last] = temp;
    last--;
  }
  start = steady_clock::now();
  for(int i=0;i<n;i++){
    nextloc = next[nextloc];
  }
  end = steady_clock::now();
  duration<double> elapsed_time = duration_cast<duration<double>>(end-start);
  std::cout<<"Took: "<<elapsed_time.count()/(double)n<<"\n";
  std::cerr<<n<<"\t"<<elapsed_time.count()*1000000000.0<<"\n";
}
