#!/bin/sh

echo "Checking for required qemu binary..."

if [ -e $(which qemu-system-ppc) ];
then
	echo "Found: qemu-system-ppc"
else
	echo "ERROR - Required qemu binary cannot be found! Not exists: qemu-system-ppc"
	exit 1
fi

if [ ! -e data.img ];
then
	if [ $1 -gt 19 ];
	then
		echo "Creating storage image in RAW format. File size $1B"
		qemu-img create -q -f raw data.img $1G
	else
		echo "ERROR - Minimum supported storage image size is 20GB!"
		exit 1
	fi
fi

if [ ! -e macos_921_ppc.iso ];
then
	echo "Downloading installer file..."
	wget https://archive.org/download/os-9-install-cd/macos_921_ppc.iso
fi

if [ -e macos_921_ppc.iso ];
then
	qemu-system-ppc -L pc-bios -M mac99,via=pmu -display sdl -m 512 -drive file=$(pwd)/data.img,format=raw,media=disk -boot order=d -cdrom $(pwd)/macos_921_ppc.iso
else
	echo "ERROR - Unable to continue. Installer cannot be found!"
	exit 1
fi
