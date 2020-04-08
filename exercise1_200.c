#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main() {

  //initializing the 2D array
  int array[200][200];

  //initializing the summation variable
  int x = 0;

  //initializing clock varibales to track runtime
  clock_t start_t, end_t, total_t;

  //initializing the varibale to use for random values
  time_t t;

  //initializing the function rand() in order to generate 
  //random values for the 2D array
  srand((unsigned) time(&t));

  //getting the clock time right before entering array for loop
  start_t = clock();

  //printing out the start time to the user
  printf("Starting of the program, start_t = %ld\n", start_t);

  //initializing and summing a 2D array in row major order
  for(int r = 0; r < 200; r++) {
    for(int c = 0; c < 200; c++) {

      //array 
      array[r][c] = rand() % 50;
      x += array[r][c];
    }
  }
  //getting the clock time right after exiting the array for loop
  end_t = clock();

  //printing out the end time to the user
  printf("End of the big loop, end_t = %ld\n", end_t);
  
  //calculating the delta time it took to initialize and sum the 2D array
  total_t = (double)(end_t - start_t) / CLOCKS_PER_SEC;

  //printing out the total runtimep of the 2D array initialization and summation
  printf("Total time taken by CPU: %f\n", total_t  );

}