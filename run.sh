#!/bin/sh

if [ $(uname) = "Darwin" ];
then
	QEMU_MACOS9_DISPLAY=cocoa
else
	QEMU_MACOS9_DISPLAY=sdl
fi

qemu-system-ppc -L pc-bios -M mac99,via=pmu -display $QEMU_MACOS9_DISPLAY -m 512 -drive file=$(pwd)/data.img,format=raw,media=disk 
