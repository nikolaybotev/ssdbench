# SSD Benchmark Toolkit

A process for benchmarking SSDs on macOS.

## Required Software

AmorphousDiskMark: https://katsurashareware.com/amorphousdiskmark/

Homebrew: https://brew.sh

Command Line Tools: `brew install smartmontools gnuplot pngpaste`
- `smartctl`: monitors drive temperature during test.
- `gnuplot`: plots a graph of the temperature readings.
- `pngpaste`: saves the benchmark results screenshot from the command line.

## Preparation

1. Quit all applications (`Cmd-Tab` to cycle through and `Cmd-Q` to quit).
2. Turn off WiFi and Bluetooth, and disconnect Ethernet.
3. Open Terminal and AmorphousDiskMark

## Execution

1. Identify the Disk

```
DISK_ID=disk1
DISK_NAME="SSD in Enclosure on Mac"
```

Hint: you can discover the disk identifier (`DISK_ID` above) using Disk Utility: select the disk in Disk Utility from
the NavBar on the left, and press `Cmd-I`, then look at the BSD device node (3rd item in the list in the Data Info popup
window; the disk identifier is the word disk followed by a number, excluding the "s..." portion of the BSD device
node).

2. Setup the Test Environment

```
source ./setup_environment.sh
```

3. Monitor Temperature

```
source ./monitor_temperature.sh
```

4. Run AmorphousDiskMark (default settings)

5. Stop Monitoring the Temperature

```
<Ctrl-C>
```

6. Save the Results and Graph the Temperature

- Press `Cmd-C` from within AmorphousDiskMark to copy the results.
- Save the results in text and image format:

```
source ./paste_results.sh
source ./graph_temperature.sh
```

## Useful Commands

View Storage Configuration (physical link speed, file system, protocol etc):

```
system_profiler SPUSBDataType SPThunderboltDataType SPStorageDataType
```

View System Configuration (memory, processor, model):

```
system_profiler SPHardwareDataType SPMemoryDataType
```

## Credits

* Gnuplot Recipes: http://zenonharley.com/gnuplot/cli/2015/06/29/graphing-data-from-the-command-line.html
* Mac System Information through Terminal: https://www.itechlounge.net/2013/09/mac-osx-get-full-system-information-through-terminal/
