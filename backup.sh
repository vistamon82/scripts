#! /bin/bash
# my backup script 
# vistamon82, 2015

DATE=$(date | awk '{print $1$2$3$4$6}' | sed 's/://' | sed 's/://')

if [ "$(whoami)" != "root" ]; then
	echo "You must be root to create a system image."
	exit 1
fi

echo "Backing up to "$DATE".gz..."

cat /dev/sda | gzip -c > /run/media/centos/Seagate/$DATE.gz & # change /run/media/centos/Seagate/ to desired backup location directory and /dev/sda to the sd* you want to backup


## progress indicator?? ##
while true; do
	echo $(ls -lah /run/media/centos/Seagate/ | grep $DATE | awk '{print $5}')
	sleep 1
done
