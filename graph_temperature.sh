gnuplot -c tools/graph_temperature.gpi "${DISK_NAME}" "${DISK_TEMPERATURE_FILE}" > "${DISK_TEMPERATURE_GRAPH}"
sed -i "" -e "s|<title>Gnuplot</title>|<title>${DISK_NAME}</title>|" "${DISK_TEMPERATURE_GRAPH}"
