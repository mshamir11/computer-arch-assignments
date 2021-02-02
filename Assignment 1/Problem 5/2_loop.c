/* 
Reference for calculating time:

https://www.cs.rutgers.edu/~pxk/416/notes/c-tutorials/gettime.html

*/



#include <stdio.h>	/* for printf */
#include <stdint.h>	/* for uint64 definition */
#include <stdlib.h>	/* for exit() definition */
#include <time.h>	/* for clock_gettime */


#define BILLION 1000000000L


long long int factorial_loop(int n)
{
    long long int fact=1;
    for (int i=n;i>0;i--)
    {
        fact = fact*i;
    }
    return n;
} 

int main()
{
    
    uint64_t diff;
	struct timespec start, end;
	int i;
    FILE *fptr;
    fptr =fopen("results.txt","a");
    // fptr = fopen("results_2.txt","w");
    // fclose(fptr);
    // fptr =fopen("results_2.txt","a");
    

    float sum=0;
    long long int n=100;
    long long int a;



    fprintf(fptr,"===========================================================\n");
    fprintf(fptr,"Experiment 2 : Using Loop\n");
    



    clock_gettime(CLOCK_MONOTONIC, &start);	
    for (int i=1;i<=100;i++)
    {
    a=factorial_loop(i);
    }

	clock_gettime(CLOCK_MONOTONIC, &end);
    
    diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
    fprintf(fptr,"Total time = %llu nanoseconds\n\n",(long long unsigned int) diff);
    fclose(fptr);
}