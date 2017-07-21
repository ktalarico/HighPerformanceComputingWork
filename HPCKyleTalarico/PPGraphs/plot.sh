set term png
set output "CPUBounds.png"
set title "Full HD with 100 Templates on CPU"
set xlabel "Num Images"
set ylabel "Pixels/s"
set yrange [0:120000]
plot "CPUPlot.dat" using 2 title 'Calculations' with lines, \
     "CPUPlot.dat" using 3 title 'Memory' with lines
set output "GPUBounds.png"
set title "Full HD with 100 Templates on GPU"
set xlabel "Num Images"
set ylabel "Pixels/s"
set yrange [0:]
plot "GPUPlot.dat" using 2 title "Calculation" with lines, \
     "GPUPlot.dat" using 3 title "Memory" with lines, \
     "GPUPlot.dat" using 4 title "PCIe" with lines
