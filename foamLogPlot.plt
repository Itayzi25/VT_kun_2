set terminal png size 1200,600
set output "foamLog.png"

set multiplot layout 2,1 rowsfirst

set yrange[0:1.3e-6]
set title "Governing Equations"
plot "logs/rhoFinalRes_0"     using 1:2 with lines linewidth 2, \
     "logs/UxFinalRes_0"      using 1:2 with lines linewidth 2, \
     "logs/UyFinalRes_0"      using 1:2 with lines linewidth 2, \
     "logs/UzFinalRes_0"      using 1:2 with lines linewidth 2, \
     "logs/eFinalRes_0"       using 1:2 with lines linewidth 2, \

set yrange[0:1e-8]
set title "Other Equations"
plot "logs/kFinalRes_0"       using 1:2 with lines linewidth 2, \
     "logs/epsilonFinalRes_0" using 1:2 with lines linewidth 2

unset multiplot
