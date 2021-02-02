# Assignment 1 📖 <!-- omit in toc -->

## Contents <!-- omit in toc -->
- [Problem 1](#problem-1)
- [Problem 2](#problem-2)
- [Problem 3](#problem-3)
- [Problem 4](#problem-4)
- [Problem 5](#problem-5)

## Problem 1
Suppose I design a processor that consumes 65 watts of power (This is total power) while running
at 2 GHz. How much dynamic power would the same processor consume if I increase its
frequency to 5 GHz? (10 points)

## Problem 2
I have a processor X that runs at 2 GHz and a program (Program A) that has a CPI of 3. If the
program completes 5 billion instructions from start to finish, how long did this program run for?
I get another processor Y from the market, that has a clock frequency of 4 GHz. Program A on
this new processor executes 8 billion instructions with an average CPI of 5. What is the speedup
(if any) of program A on processor Y over processor X? (20 points)

## Problem 3
Assume that I build a processor that runs at 1 GHz. Program A executes 7 billion instructions on
this processor and has an average CPI of 1.5. Now, I changed the design of the processor so that
I can run it at 2 GHz, dropping the execution time of Program A to a quarter of the original value.
What is the average CPI of Program A on the new design? (20 points)

## Problem 4
We have a processor with two cores. Program A completes in 4 seconds on core 1 and has a CPI
of 8 and program B completes in 5 seconds on core 2 and has a CPI of 5. Both cores run at 1 GHz.
What is the combined throughput of the processor? (20 points)

## Problem 5
Implement a program to find the factorial of numbers from 1 to 100 in C in the following manner:
1. Using recursion
2. Using loop
3. Using recursion and memoization
4. Using loop and memoization       


And find the speedup of all the programs on your machine by keeping program (1) as the
baseline. (80 points)
Tips: Measure the time taken by the program on the CPU using timespec.      


**Solution:**      

To recreate the results:    
- Go to "Problem 5" directory, and then run the following file in the terminal. 

    ```bash
        source ./all_in_one.sh
    ```

1. [Code for using Recursion.](./Problem%205/1_recursion.c)
2. [Code for using Loop](./Problem%205/2_loop.c)
3. [Code for using Recursion and Memoization](./Problem%205/3_recursion_memoization.c)
4. [Code for using Loop and Memoization](./Problem%205/4_loop_memoization.c)     
    
The results can be seen in the "results.txt" file. A sample data can be accessed [here](./Problem%205/results.txt).

- Results: 🌟
    - Order of time taken: Recursion > Loop > Recursion and Memoization > Loop and Memoization.
    - Speed Up: 
      1. Recursion - Baseline
      2. Loop - 

