#  100 factorial using Memoization


# Basic Structure:
#            Loop (for i in range(101)):
#              Multiply (for j in range(i):                 
#              Save_array:
#            Exit 

# Psuedo Code
#
# myFactoryArray[101]
# myFactoryArray[0]=1
#  for i in range(1,101):
#	mul_sum=0
#	for j in range(i):
#		mul_sum+= myFactoryArray[i-1]	
#	myFactoryArray[i]=mul_sum
#



.data


myFactorialArray: .space 408         

.text

	sw $s0,myFactorialArray             #base is set to $s0
	li $t0,0                            #initializing i=0, for loop, here $t0=i
	li $t1,1
	sw $t1,myFactorialArray($t0)              # initialize zero factorial as 1
	li $t4,404                          # need 100 factorial, therefore, for i=0;i<101;i++, 
	                                          # Since integer cost 4bytes, we need the limit 101*4


loop:

	
	beq $t0,$t4,exit     #  if i==404, the loop is complete. Exit the program
	li $t5,0             # $t5=j, inner loop for multiplication by repetitive addtion,initialize j=0  
	li $t6,0             # this variable holds the sum value in repetitive addition. Let's call this variable, mul_sum
	lw $t1,myFactorialArray($t0)     # load the previously calculated factorial from the array into $t1
	
	# Uncomment the below six lines to print factorial of each kth value
	#li $v0,1                         
	#move $a0,$t1
	#syscall 
	
	#addi $v0,$0,11
	#addi $a0,$0,10
	#syscall
	
	j multiply                       # Go into the mulitplication loop. To calculate the current factorial
	
	

multiply:
	blt $t0,$t5,save_array    #branch out when $t0<$t5. We have to calculate, i*myArray[i-1]. This function adds i times
	                          # the previous array element. Once the multiplication is done. Go to the save array function.
	addu $t6,$t6,$t1          # add the previous element to the mul_sum, mul_sum += myArray[i-1]     
	addi $t5,$t5,4            # j+=4, since the array indices are multiples of 4. (4 bytes for integers)
	j multiply


save_array:
	addi $t0,$t0,4      # i = i+4 
	sw $t6,myFactorialArray($t0)      # the mul_sum is copied to the myArraySum[i]
	j loop                            # it goes back to the loop.
	 
exit:
	li $v0,1                         
	move $a0,$t6
	syscall                           # Syntax for print services  for integers
	
	li $v0,10                        # Exit
	syscall
	
