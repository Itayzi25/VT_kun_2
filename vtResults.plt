set terminal png size 800,600
set output "vtResults.png"

set key default
set grid

set multiplot layout 2,1 rowsfirst

set title "VT Efficiency & Cold Flow Fraction"
plot "vtResults" using 1:2 with linespoints linewidth 2 linetype rgb "green" pointtype 7 pointsize 1.5 title "Cold Flow Frac", \
     "vtResults" using 1:3 with linespoints linewidth 2 linetype rgb "black" pointtype 7 pointsize 1.5 title "VT Efficiency"

set title "Separation Temperatures [K]"
plot "vtResults" using 1:4 with linespoints linewidth 2 linetype rgb "blue" pointtype 7 pointsize 1.5 title "TsepCold [K]", \
     "vtResults" using 1:5 with linespoints linewidth 2 linetype rgb "red"  pointtype 7 pointsize 1.5 title "TsepHot  [K]"

unset multiplot
