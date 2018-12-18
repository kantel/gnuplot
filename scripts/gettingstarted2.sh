#!/usr/local/bin/gnuplot

set term aqua

set param
set iso 50
set ztics 0.5
set xtics 0.4
set ytics 0.4

set urange[-pi:pi]
set vrange [-pi:pi]
set pm3d depthorder

splot cos(u)*cos(v), sin(u)*cos(v), sin(u) with pm3d