set t pdf
set output "latency.pdf"
set title "Memory Latency from 1KB to 200MB"
set xlabel "Num Elements"
set ylabel "Seconds"
set logscale x 2
set logscale y 10
plot "lat.sh.e10052" with linespoints

