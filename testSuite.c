#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void matrixInit(int **ptrMatrix, int numRows, int numCols);
int matrixSumRM(int **ptrMatrix, int numRows, int numCols);
int matrixSumCM(int **ptrMatrix, int numRows, int numCols);

int main()
{
    srand(time(NULL));
    
    int **ptrMat20 = (int **)malloc(20*sizeof(int*));
    	for(int i=0;i<20;i++)
	{
		ptrMat20[i]=(int *)malloc(20*sizeof(int));
	}
    int **ptrMat200 = (int **)malloc(200*sizeof(int*));
    	for(int i=0;i<200;i++)
	{
		ptrMat200[i]=(int *)malloc(200*sizeof(int));
	}
    int **ptrMat2000 = (int **)malloc(2000*sizeof(int*));
    	for(int i=0;i<2000;i++)
	{
		ptrMat2000[i]=(int *)malloc(2000*sizeof(int));
	}
 
    int sum20x20;
    int sum200x200;
    int sum2000x2000;
    double dbTime20;
    double dbTime200;
    double dbTime2000;
    clock_t cStart20R, cEnd20R, cStart20C, cEnd20C;
    clock_t cStart200R, cEnd200R, cStart200C, cEnd200C;
    clock_t cStart2000R, cEnd2000R, cStart2000C, cEnd2000C;
    clock_t cDur20, cDur200, cDur2000;
    //add timestamps for each matrix sum
    
    matrixInit(ptrMat20,20,20);
    matrixInit(ptrMat200,200,200);
    matrixInit(ptrMat2000,2000,2000);
    
    //timing for each Row-Major Summation
    cStart20R = clock();
    sum20x20 = matrixSumRM(ptrMat20,20,20);
    cEnd20R = clock();
    cStart200R = clock();
    sum200x200 = matrixSumRM(ptrMat200,200,200);
    cEnd200R = clock();
    cStart2000R = clock();
    sum2000x2000 = matrixSumRM(ptrMat2000,2000,2000);
    cEnd2000R = clock();
    
    cDur20 = cEnd20R - cStart20R;
    cDur200 = cEnd200R - cStart200R;
    cDur2000 = cEnd2000R - cStart2000R;
    printf("Row Major, 20x20: %ld\n",cDur20);
    printf("Row Major, 200x200: %ld\n",cDur200);
    printf("Row Major, 2000x2000: %ld\n",cDur2000);
    
    //timing for each Column-Major Summation
    cStart20C = clock();
    sum20x20 = matrixSumCM(ptrMat20,20,20);
    cEnd20C = clock();
    cStart200C = clock();
    sum200x200 = matrixSumCM(ptrMat200,200,200);
    cEnd200C = clock();
    cStart2000C = clock();
    sum2000x2000 = matrixSumCM(ptrMat2000,2000,2000);
    cEnd2000C = clock();
    
    cDur20 = cEnd20C - cStart20C;
    cDur200 = cEnd200C - cStart200C;
    cDur2000 = cEnd2000C - cStart2000C;
    
    dbTime20 =(double)((double)(cDur20)/(double)(CLOCKS_PER_SEC));
    dbTime200 = (double)(cDur200)/(double)CLOCKS_PER_SEC;
    dbTime2000 = (double)(cDur2000)/(double)CLOCKS_PER_SEC;
    
    printf("Column Major, 20x20: %ld\n",cDur20);
    printf("%f s\n",dbTime20);
    printf("Column Major, 200x200: %ld\n",cDur200);
    printf("%f s\n",dbTime200);
    printf("Column Major, 2000x2000: %ld\n",cDur2000);
    printf("%f s\n",dbTime2000);
    
}

void matrixInit(int **ptrMatrix, int numRows, int numCols)
{
    for(int i=0;i<numRows;i++)
    {
        for(int j=0;j<numCols;j++)
        {
                ptrMatrix[i][j]= rand();
        }
    }
}

int matrixSumRM(int **ptrMatrix, int numRows, int numCols)
{
    int sum = 0;
    for(int i=0;i<numRows;i++)
    {
        for(int j=0;j<numCols;j++)
        {
                sum += ptrMatrix[i][j];
        }
    }
}

int matrixSumCM(int **ptrMatrix, int numRows, int numCols)
{
    int sum = 0;
    for(int j=0;j<numCols;j++)
    {
        for(int i=0;i<numRows;i++)
        {
                sum += ptrMatrix[i][j];
        }
    }
}
