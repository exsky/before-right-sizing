#!/bin/bash

for i in `seq 300`; do
	NOW=$( date '+%F %H:%M:%S' );
	MEM_PERCENT=$( free | grep Mem | awk '{print $3/$2 * 100.0}' );
	#MEM=$( free | grep "Mem" )
	#echo $NOW >> memlog.txt;
	#echo $MEM_PERCENT >> memlog.txt;
	echo $NOW, $MEM_PERCENT >> memlog.txt;
	sleep 10;
done;
