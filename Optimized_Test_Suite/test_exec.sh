#!/bin/sh

for x in a b c d e f g
do
	printf "\n\nIN $x.o\n"
	printf "ROW MAJOR\n\n"
	printf "20x20\n"
	./$x.o 20 1 0
	printf "200x200\n"
	./$x.o 200 1 0
	printf "2000x2000\n"
	./$x.o 2000 1 0
	printf "COLUMN MAJOR\n"
	printf "20x20\n"
	./$x.o 20 1 1
	printf "200x200\n"
	./$x.o 200 1 1
	printf "2000x2000\n"
	./$x.o 2000 1 1
done
		
