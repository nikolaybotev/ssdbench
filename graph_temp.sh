gnuplot -e "
set terminal svg
set title '${DISK_NAME}'
set xlabel 'Time (seconds)'
set ylabel 'Temperature (C)'
set style data lines
set linewidth 4
plot '${DISK_TEMPERATURE_FILE}'
" > "${DISK_TEMPERATURE_GRAPH}"
