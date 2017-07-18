#!/bin/bash

printf "FULL VERSION\x00" > tmp
cp Crackme06.exe Crackme06.crack.exe
dd if=tmp of=Crackme06.crack.exe obs=1 seek=$1 conv=notrunc
