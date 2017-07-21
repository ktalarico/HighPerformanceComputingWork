set term png size 900,628
set title "N Rotations on a 256x256 Image"
set xlabel "Rotations(x100)"
set ylabel "Seconds"

set key outside
set output "rotModelGPU.png"
plot "flopGpu.dat" t "Flop Bound" with lines, "memGpu.dat" t "Mem Bound" with lines, "gpurot.sh.e14473" t "Base" with points, "gpurotImp.sh.e14472" t "Improved" with points, "pcieGpu.dat" t "PCIe" with lines

set logscale y
set key outside
set output "logrotModelGPU.png"
plot "flopGpu.dat" t "Flop Bound" with lines, "memGpu.dat" t "Mem Bound" with lines, "gpurot.sh.e14473" t "Base" with points, "gpurotImp.sh.e14472" t "Improved" with points, "pcieGpu.dat" t "PCIe" with lines
