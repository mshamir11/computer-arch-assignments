#include <stdio.h>	/* for printf */
#include <stdint.h>	/* for uint64 definition */
#include <stdlib.h>	/* for exit() definition */
#include <time.h>	/* for clock_gettime */


#define BILLION 1000000000L


long long int factorial_recursion_memoization(int n,long long int* arr)
{
    if (n==0)
    {
        return 1;
    }
    if (arr[n])
    {
        return arr[n];
    }
    else
    {
        return arr[n]=factorial_recursion_memoization(n-1,arr);
    }
    
} 

int main()
{
    
    uint64_t diff;
	struct timespec start, end;
	int i;
    FILE *fptr;
    fptr =fopen("results.txt","a");
    // fptr = fopen("results_3.txt","w");
    // fclose(fptr);
    // fptr =fopen("results_3.txt","a");
    
    

    float sum=0;
    long long int n=100;
    long long int a;
    long long int arr[101];




    fprintf(fptr,"===========================================================\n");
    fprintf(fptr,"Experiment 3 : Using Recursion and Memoization\n");
    


    
    clock_gettime(CLOCK_MONOTONIC, &start);	
    arr[0]=0;
    for (int i=1;i<=100;i++)
    {
    arr[i]=0;
    a=factorial_recursion_memoization(i,arr);
    }

	clock_gettime(CLOCK_MONOTONIC, &end);
    diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
 
    fprintf(fptr,"Total time = %llu nanoseconds\n\n", (long long unsigned int) diff);
    fclose(fptr);
}