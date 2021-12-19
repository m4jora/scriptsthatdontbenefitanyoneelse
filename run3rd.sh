#!/bin/bash
if [ $EUID != 0 ]; then
sudo "$0" "$@"
exit $?
fi

cryptsetup luksOpen $(fdisk -l | grep '   2048 6265' | sed 's/   2048 6265.*//') ater
mount /dev/mapper/ater /home/verr/ater
mount $(fdisk -l | grep '2048 1247' | sed 's/   .*//') /home/verr/Downloads
