DISK_FOLDER="$(date +%Y%m%d_%H%M%S)-${DISK_ID}-$(echo ${DISK_NAME} | tr ' ' '-' | tr '[[:upper:]]' '[[:lower:]]')"
DISK_TEMPERATURE_FILE="${DISK_FOLDER}/${DISK_FOLDER}-Temperature.tsv"
DISK_TEMPERATURE_GRAPH="${DISK_FOLDER}/${DISK_FOLDER}-Temperature.svg"
DISK_RESULTS_TEXT="${DISK_FOLDER}/${DISK_FOLDER}-Results.txt"
DISK_RESULTS_IMAGE="${DISK_FOLDER}/${DISK_FOLDER}-Results.png"
mkdir -p "${DISK_FOLDER}"

