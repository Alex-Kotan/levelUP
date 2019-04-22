#!/bin/bash
mkdir /home/kotov/files/$(date +"%m%d%Y")
for file in file1 file2 file3
do
dd if=/dev/urandom of=/home/kotov/files/$(date +"%m%d%Y")/$file bs=100M count=6
done