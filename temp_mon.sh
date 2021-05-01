n=1
while true; do
  output="$(smartctl -A "$DISK_ID")"
  main_temp="$(echo "$output" | awk "/^Temperature:/ { print \$2 }")"
  # Support for second temperature sensor
  second_temp="$(echo "$output" | awk "/^Temperature Sensor 2:/ { print \$4 }")"
  echo "$n\t$main_temp\t$second_temp"
  sleep 1
  n=$((n+1))
done | tee "${DISK_TEMPERATURE_FILE}"

