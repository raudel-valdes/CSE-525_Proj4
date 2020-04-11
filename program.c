#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ROW_MAJOR 0
#define COLUMN_MAJOR 1

int main(int argc, char* argv[]) {

	if(argc != 4) {
		printf("Usage: ./%s <matrix dimension> <access offset> <Row(0)/Column(1) Major>\n", __FILE__);
	}
	
	int mSize = 1;
	int moduloOffset = 1;
	int inMajor = 1;

	mSize = atoi(argv[1]);
	moduloOffset = atoi(argv[2]);
	inMajor = atoi(argv[3]);
	
	// Initialize the 2D array
	int **array = (int **)malloc(mSize*sizeof(int*));
	for(int i=0;i<mSize;i++)
	{
		array[i] = (int *)malloc(mSize*sizeof(int));
	}
	
	// Initialize the summation variable
	int x = 0;
	
	// Initialize clock variables to track runtime
	clock_t start_t, end_t;
	double total_t;
	
	// Initialize variable for random values
	time_t t;
	
	// Generate random values for 2D array
	srand((unsigned)time(&t));
	
	// Initialize the array
	for(int r = 0; r < mSize; r++) {
		for(int c = 0; c < mSize; c++) {
			
			// Random - should be used when clocking
			array[r][c] = rand() % 50;
			
			// Deterministic - should be used to check sum
			array[r][c] = r + c;
		}
	}
	
	// Print the start
	printf("Program start: ");
	
	// Get the clock time immediately before iteration
	start_t = clock();
	
	// Run a 2D array in row major order
	if(inMajor == ROW_MAJOR){
		for(int i = 0; i < moduloOffset; i++) {
			for(int r = 0; r < mSize; r++) {
				for(int c = i; c < mSize; c += moduloOffset) {
					x += array[r][c];
				}
			}
		}
	}
	else if(inMajor == COLUMN_MAJOR){
		for(int i = 0; i< moduloOffset; i++){
			for(int c = 0; c < mSize; c++){
				for(int r = 0; r <mSize; r += moduloOffset){
					x += array [r][c];
				}
			}
		}
	}
	else{
	}
	
	// Get the exit clock time
	end_t = clock();
	
	// Print start time
	printf("%ld\n", start_t);
	
	// Print end time
	printf("Program end: %ld\n", end_t);
	
	// Print difference
	printf("\u0394V is %ld\n", (end_t - start_t));
	
	// Calculate overall time
	total_t = (double)(end_t - start_t) / (double)CLOCKS_PER_SEC;
	
	// Print total runtime of summation
	printf("Total CPU time: %f\n", total_t);

}
