# SSD Benchmark Toolkit

A process for benchmarking SSDs on macOS.

## Required Software

AmorphousDiskMark: https://katsurashareware.com/amorphousdiskmark/

Homebrew: https://brew.sh

smartctl: `brew install smartmontools`
- Used to monitor drive temperature during test.

gnuplot: `brew install gnuplot`
- Used to plot a graph of the temperature readings.

pngpaste: `brew install pngpaste`
- Used to save the benchmark results screenshot from the command line.

## Preparation

1. Quit all applications (Cmd-Tab to cycle through and Cmd-Q to quit).
2. Turn off WiFi and Bluetooth, and disconnect Ethernet.
3. Open Terminal and AmorphousDiskMark

## Execution

1. Identify the Disk

```
DISK_ID=disk1
DISK_NAME="SSD in Enclosure on Mac"
```

Hint: you can discover the disk identifier (`DISK_ID` above) using Disk Utility: select the disk in Disk Utility from
the NavBar on the left, and press Cmd-I, then look at the BSD device node (3rd item in the list in the Data Info popup
window; the disk identifier is the word disk followed by a number, excluding the "s..." portion of the BSD device
node).

2. Setup the Test Environment

```
source ./setup_env.sh
```

2. Monitor Temperature

```
source ./temp_mon.sh
```

2. Run AmorphousDiskMark (default settings)

3. Save the Results

- Press Cmd-C from within AmorphousDiskMark to copy the results.
- Save the results in text and image format:

```
source ./paste_results.sh
```

3. Graph the Temperature

```
source ./graph_temp.sh
```
