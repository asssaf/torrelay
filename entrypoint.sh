#!/bin/sh

set -eu

/usr/bin/tor &

HIDDEN="/hidden"


while [ ! -e "$HIDDEN/hostname" ]
do
	echo "Waiting..."
	sleep 5
done

echo "Hostname: $(cat "$HIDDEN/hostname")"

wait
