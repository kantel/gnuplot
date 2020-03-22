#!/usr/local/bin/gnuplot

# set term aqua

set term pngcairo size 900, 600 enhanced font "Verdana, 14"
# set output "kleinbottle.png"

set pm3d depthorder hidden3d
set hidden3d
set palette model HSV defined (0 0 1 1, 1 1 1 1)
set iso 90
set view 90, 180, 1, 0.9

unset colorbox
unset key
unset tics
unset border

set title "Kleinsche Flasche"

set param
set xrange[-8:8]
set yrange[-8:8]
set urange[0:2*pi]
set vrange[0:2*pi]

splot 2*(1 - sin(u))*cos(u) + (2 - cos(u))*cos(v)*(2*exp(-u/2 - pi)**2 - 1), 2 - cos(u)*sin(v), 6*sin(u) + 0.5*(2 - cos(u))*sin(u)*cos(v)*exp(-(u - 3*pi/2)**2) w pm3d
