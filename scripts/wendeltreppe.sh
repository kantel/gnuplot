#!/usr/local/bin/gnuplot

set term aqua

set param
set iso 50
set hidd

splot v*cos(u), 3*v*sin(u), 0.3*u

set term svg
set output "wendeltreppe.svg"

replot