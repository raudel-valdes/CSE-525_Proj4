## output file optimization levels
all compiliations are based on the static-dev program testSuite.c, with progressive optimizations
the compile commands are listed below for reference

a.o - gcc testSuite.c -g -O0 -o a.o

b.o - gcc testSuite.c -g -O0 -floop-interchange -o b.o

c.o - gcc testSuite.c -g -O1 -o c.o

d.o - gcc testSuite.c -g -O1 -floop-interchange -o d.o

e.o - gcc testSuite.c -g -O2 -o e.o

f.o - gcc testSuite.c -g -O2 -floop-interchange -o f.o

g.o - gcc testSuite.c -g -O3 -o g.o

## execution results
a single execution was taken for each compiled program, and the results transcribed to testResults.xls

## assembly files
the assembly files for each optimization were saved in the "assembly_files" directory, following the same compile naming scheme as the executables
