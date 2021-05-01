gnuplot -e "
set terminal svg;
set title '${DISK_NAME}';
set xlabel 'Time (seconds)';
set ylabel 'Temperature (C)';
set style data line;
set nokey;
plot '${DISK_TEMPERATURE_FILE}' linewidth 2
" > "${DISK_TEMPERATURE_GRAPH}"
