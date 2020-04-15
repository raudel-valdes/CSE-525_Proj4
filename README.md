# CSE-525_Proj4
## Full-comparison of -O[0-3] and -floop-interchange optimizations
progressive optimizations of program.c using the compile commands below for reference

a.o - gcc program.c -g -O0 -o a.o

b.o - gcc program.c -g -O0 -floop-interchange -o b.o

c.o - gcc program.c -g -O1 -o c.o

d.o - gcc program.c -g -O1 -floop-interchange -o d.o

e.o - gcc program.c -g -O2 -o e.o

f.o - gcc program.c -g -O2 -floop-interchange -o f.o

g.o - gcc program.c -g -O3 -o g.o

## Execution
**test_exec.sh** runs a batch of executions for each optimized program, in the order
- 20x20 row major
- 200x200 row major
- 2000x2000 row major
- 20x20 column major
- 200x200 column major
- 2000x2000 column major

## Comparison Excel
The execution times (in clock cycles) based on the command in **test_exec.sh** were transcribed to **Optimized Execution Comparison.xls**

From this data, it is approximately seen that **-floop-interchange has negligable affect on program optimization, with major changes seen instead between -O0 to -O1.**

## Assembly listings
the assembly files for each optimization are equivalently-named in the "Assembly" directory
