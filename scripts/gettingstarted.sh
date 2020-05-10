#!/usr/local/bin/gnuplot

plot sin(1/x)*cos(x)

set terminal pngcairo size 900, 600 enhanced font "Verdana, 14"
set output "gnuplottest.png"

replot