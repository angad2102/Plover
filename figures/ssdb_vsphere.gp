set terminal pngcairo
set output 'ssdb_vsphere.png'

set ylabel "throughput [requests / sec]"
set xrange [0:2.5]
set key right top
set xtics ("100" 0, "100K" 1, "100M" 2)
set yrange [0:25000]
set ytics ("0" 0, "5K" 5000, "10K" 10000, "15K" 15000, "20K" 20000, "25K" 25000)
set bmargin 3
set label 11 center at graph 0.5,0 "SSDB: size of key space" offset 0,-2.5

plot 'ssdb_vsphere.dat' using 3 title "Plover" with linespoints, "ssdb_vsphere.dat" using 2 title "vSphere FT" with linespoints, "ssdb_vsphere.dat" using 4 title "unreplicated execution on KVM" with linespoints

unset yrange
unset ytics
unset border