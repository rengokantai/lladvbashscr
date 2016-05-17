#!/bin/bash
dd if=/dev/zero of=/inputfile bs=1024 count=10

cd /$2
for (( counter=1;counter<$1;counter++ )); do
	cp /inputfile $counter.txt
done
exit 0
