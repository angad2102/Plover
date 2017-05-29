set terminal pngcairo
set output 'ssdb_vsphere.png'
set style line 1 lt 1 lw 3 pt 2 ps 4 lc rgb "blue"
set style line 2 lt 3 lw 3 pt 12 ps 4 lc rgb "#E91717"

set ylabel "throughput [requests / sec]"
set xrange [0:2.5]
set key right top
set xtics ("100" 0, "100K" 1, "100M" 2)
set yrange [0:20000]
set ytics ("0" 0, "5K" 5000, "10K" 10000, "15K" 15000, "20K" 20000)
set bmargin 3
set label 11 center at graph 0.5,0 "SSDB: size of key space" offset 0,-2.5

plot 'ssdb_vsphere.dat' using 3 title "Plover" ls 1 with linespoints, "ssdb_vsphere.dat" using 2 title "vSphere FT" ls 2 with linespoints

unset yrange
unset ytics
unset border