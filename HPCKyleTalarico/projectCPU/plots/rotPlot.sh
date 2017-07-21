set term png size 1000, 628
set title "N Rotations on a 256x256 Image"
set xlabel "Number of Rotations"
set ylabel "Seconds"
set logscale y
set key outside
set output "rotModel.png"
plot "flopGpu.dat" with lines, "memGpu.dat" with lines, "testRot.sh.e14717" with points
