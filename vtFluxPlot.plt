set terminal png size 1200,600
set output "vtFlux.png"

set key default

set multiplot layout 2,2 rowsfirst

set title "Flux [kg / s]"
plot "fluxPatch_INLET" using 1:2 with linespoints linewidth 2 linetype rgb "green" pointtype 7 pointsize 1.5 title "inlet", \
     "fluxPatch_COLD"  using 1:2 with linespoints linewidth 2 linetype rgb "blue"  pointtype 5 pointsize 1.5 title "coldoutlet", \
     "fluxPatch_HOT"   using 1:2 with linespoints linewidth 2 linetype rgb "red"   pointtype 9 pointsize 1.5 title "hotoutlet"

set title "Ttot [K]"
plot "fluxPatch_INLET" using 1:3 with linespoints linewidth 2 linetype rgb "green" pointtype 7 pointsize 1.5 title "inlet", \
     "fluxPatch_COLD"  using 1:3 with linespoints linewidth 2 linetype rgb "blue"  pointtype 5 pointsize 1.5 title "coldoutlet", \
     "fluxPatch_HOT"   using 1:3 with linespoints linewidth 2 linetype rgb "red"   pointtype 9 pointsize 1.5 title "hotoutlet"

set title "T [K]"
plot "fluxPatch_INLET" using 1:4 with linespoints linewidth 2 linetype rgb "green" pointtype 7 pointsize 1.5 title "inlet", \
     "fluxPatch_COLD"  using 1:4 with linespoints linewidth 2 linetype rgb "blue"  pointtype 5 pointsize 1.5 title "coldoutlet", \
     "fluxPatch_HOT"   using 1:4 with linespoints linewidth 2 linetype rgb "red"   pointtype 9 pointsize 1.5 title "hotoutlet"

set title "p [kPa]"
plot "fluxPatch_INLET" using 1:5 with linespoints linewidth 2 linetype rgb "green" pointtype 7 pointsize 1.5 title "inlet", \
     "fluxPatch_COLD"  using 1:5 with linespoints linewidth 2 linetype rgb "blue"  pointtype 5 pointsize 1.5 title "coldoutlet", \
     "fluxPatch_HOT"   using 1:5 with linespoints linewidth 2 linetype rgb "red"   pointtype 9 pointsize 1.5 title "hotoutlet"

unset multiplot
