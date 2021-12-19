#!/bin/bash
if [ $EUID != 0 ]; then
sudo "$0" "$@"
exit $?
fi
su -c firefox https://calendar.google.com/calendar/u/0/exporticalzip?cexp=ZjlnbWNpa2c2Nmc1NWc5OTgzMnF0c2tmOXNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ $SUDO_USER
clear
cd /home/verr/Downloads
unzip -o spaztech.inc@gmail.com.ical.zip
rm /home/verr/Downloads/spaztech.inc@gmail.com.ical.zip
mv -f /home/verr/Downloads/gcal*.ics /home/verr/.calendar/gcal.ics
chown verr:verr /home/verr/.calendar/gcal.ics
