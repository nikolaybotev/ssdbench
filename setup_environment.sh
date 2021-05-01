DISK_FOLDER="$(date +%Y%m%d_%H%M%S)-${DISK_ID}-$(echo ${DISK_NAME} | tr ' ' '-' | tr '[[:upper:]]' '[[:lower:]]')"
DISK_SYSTEM_CONFIG="${DISK_FOLDER}/${DISK_FOLDER}-SystemConfig.txt"
DISK_SYSTEM_STATE="${DISK_FOLDER}/${DISK_FOLDER}-SystemState.txt"
DISK_TEMPERATURE_FILE="${DISK_FOLDER}/${DISK_FOLDER}-Temperature.tsv"
DISK_TEMPERATURE_GRAPH="${DISK_FOLDER}/${DISK_FOLDER}-Temperature.svg"
DISK_RESULTS_TEXT="${DISK_FOLDER}/${DISK_FOLDER}-Results.txt"
DISK_RESULTS_IMAGE="${DISK_FOLDER}/${DISK_FOLDER}-Results.png"

mkdir -p "${DISK_FOLDER}"

system_profiler \
  SPPowerDataType \
  SPEthernetDataType \
  SPAirPortDataType \
  SPBluetoothDataType \
  SPSASDataType \
  SPSerialATADataType \
  SPParallelSCSIDataType \
  SPUSBDataType \
  SPThunderboltDataType \
  SPNVMeDataType \
  SPStorageDataType \
  2>/dev/null \
  | tee "${DISK_SYSTEM_STATE}"

system_profiler \
  SPDisplaysDataType \
  SPMemoryDataType \
  SPHardwareDataType \
  | grep -Ev "(Serial Number|UUID|UDID)" \
  | tee "${DISK_SYSTEM_CONFIG}"
echo "Processor Brand Name: $(sysctl -n machdep.cpu.brand_string)" \
  | tee -a "${DISK_SYSTEM_CONFIG}"
sw_vers \
  | tee -a "${DISK_SYSTEM_CONFIG}"
