#!/bin/sh

qemu-system-ppc -L pc-bios -M mac99,via=pmu -display sdl -m 512 -drive file=$(pwd)/data.img,format=raw,media=disk 
