gnuplot -e "
set terminal svg;
set title '${DISK_NAME}';
set xlabel 'Time (seconds)';
set ylabel 'Temperature (C)';
set yrange [15:85];
set style data line;
plot for [i=2:3] '${DISK_TEMPERATURE_FILE}' using i title columnheader linewidth 2
" > "${DISK_TEMPERATURE_GRAPH}"
