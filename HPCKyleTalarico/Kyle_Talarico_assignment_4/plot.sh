set term png
set output "2048plot.png"
set title "Maximum Speed of Flops and Memory Access"
set logscale y
set xlabel "Kernel Size"
set ylabel "Operation/s"

plot "2048data.dat" using 2 title "Computation"  with lines, \
     "2048data.dat" using 3 title "Memory Access" with lines, \
     "convPlot.sh.e11558" title "Results" with points
