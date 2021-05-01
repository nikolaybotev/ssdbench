n=1
while true; do
  smartctl -A "$DISK_ID" | awk "/Temperature/ { print \"$n\\t\" \$2 }"
  sleep 1
  n=$((n+1))
done | tee "${DISK_TEMPERATURE_FILE}"

