#!/usr/local/bin/gnuplot

set term aqua

set encoding utf8
set datafile missing "NaN"

set title "Abgeordnetenhauswahlen in Berlin (1990 - 2011)"
set style data lines
set xrange [1990:2011]
set grid

plot "/Users/admin/git/gnuplot/scripts/berlinwahlen.txt" using 1:2:xtic(1) t "SPD" lc rgb "#ff0000", "" using 1:3 t "CDU" lc rgb "#000000", "" using 1:4 t "Grüne" lc rgb "#138313", "" using 1:5 t "Linke" lc rgb "#ad3b98", "" using 1:($6) t "Piraten" lc rgb "#3b72ad", "" using 1:($7) t "NPD" lc rgb "#7e533a", "" using 1:($8) t "FDP" lc rgb "#f3db28", "" using 1:($9) t "Graue" lc rgb "#888888", "" using 1:($10) t "REP" lc rgb "#282bf3"

set term svg
set output "berlinwahlen.svg"

replot