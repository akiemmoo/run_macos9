# Run macOS 9 on QEMU!

## Dependencies
1. Qemu with PPC. ***qemu-system-ppc***
2. Qemu tools. ***qemu-img***
3. ***Wget*** *optional*; this is required if you do not have macOS 9 installer. 

## Setting up the virtual machine
1. To create virtual machine, run ***setup.sh*** with storage file size in gigabyte.
2. For example, >setup.sh 20G
3. Minimum storage file size is 20GB.
4. The script will download installer if it is not found.
5. Once downloaded, the virtual machine will boot up.

### Setting up disk in macOS 9 installer
1. Go to Utilities > Drive Setup.
2. Click on *\<not initialized\>* entry.
3. Click on ***Initialize*** button.
4. Follow by clicking on ***Initialize*** button again.

### Install macOS 9
1. To start, click on ***Mac OS Install***.
2. Follow the instruction on the screen.
3. Quit virtual machine and run ***run.sh***.

## Post-install run
1. To run the virtual machine, run ***run.sh***
2. Enjoy!
