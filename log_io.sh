#!/bin/bash

for i in `seq 300`; do
	NOW=$( date '+%F %H:%M:%S' );
	IOTPS=$( iostat | grep -A 1 "xvda" | awk -F " " '{ print $ 2 }'a );
	#IO_TOTLA=$( iostat -N )
	echo $NOW "IO tps ==> " $IOTPS >> iolog.txt;
	sleep 10;
done;
