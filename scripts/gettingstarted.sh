#!/usr/local/bin/gnuplot

set terminal aqua

plot sin(1/x)*cos(x)

set terminal pngcairo size 900, 600 enhanced font "Verdana, 14"
set output "gnuplottest.png"

replot