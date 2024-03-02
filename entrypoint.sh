#!/bin/sh

set -eu

su -c "/usr/bin/tor" user &

HIDDEN="/home/user/hidden"


while [ ! -e "$HIDDEN/hostname" ]
do
	echo "Waiting..."
	sleep 5
done

echo "Hostname: $(cat "$HIDDEN/hostname")"

wait
