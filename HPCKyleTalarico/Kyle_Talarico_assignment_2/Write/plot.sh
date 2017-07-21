set t pdf
set output "write.pdf"
set title "Bandwidth for Reading from 1KB to 200MB"
set xlabel "Num Elements"
set ylabel "MB/s"
set logscale x 2
plot "wr.sh.e10042" with linespoints

