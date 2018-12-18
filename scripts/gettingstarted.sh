#!/usr/local/bin/gnuplot

set terminal aqua
set output "gnuplottest.png"

plot sin(1/x)*cos(x)