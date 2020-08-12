#!/bin/bash

mpstat | grep -A 1 "%idle" >> cpulog.txt;

for i in `seq 30`; do
	#CPU=`mpstat | grep -A 5 "%idle" | tail -n 1 | awk -F " " '{print 100 -  $ 12}'a`;
	sleep 10;
	mpstat | grep -A 5 "%idle" | tail -n 1 >> cpulog.txt;
done;
