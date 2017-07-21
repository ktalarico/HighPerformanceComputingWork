set t pdf
set output "readwrite.pdf"
set title "Bandwidth for Reading and Writing from 1KB to 200MB"
set xlabel "Num Elements"
set ylabel "MB/s"
set logscale x 2
plot "rw.sh.e10044" with linespoints

