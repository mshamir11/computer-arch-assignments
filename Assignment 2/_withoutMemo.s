# Without memoization

# Pseudo Code
#         for k in range(1,n+1):               
#		prev=1
#	
#		for i in range(1,k+1):
#			mul_sum=0
#		 	for j in range(i):
#				mul_sum+=prev
#			prev=mul_sum
#		print("kth factorial",mul_sum)



.text
	li $t7,100   # till nth factorial
	li $t0,0   # k pointer
	li $t2,1

factorial_loop:
	
	beq $t0,$t7,exit # exit condition, if k==n
	
	# Uncomment the below six lines to print factorial of each kth value
	#li $v0,1
	#move $a0,$t2
	#syscall
	
	#addi $v0,$0,11
	#addi $a0,$0,10
	#syscall
	
	li $t1,1   # i=1
	li $t2,1  #mul_sum=1
	li $t3,1  #previous=1
#li $t4,1  #current =1
	addi $t0,$t0,1
	
	
	
loop:
	
	beq $t0,$t1,factorial_loop    # to deal with n=1 one case 
	addu $t3,$t2,$zero   #previous = mul_sum
	add $t1,$t1,1       # i=i+1
	li $t2,0            # reset mul_sum=0
	li $t5,0            # j pointer 
	j multiply
	

multiply:
	beq $t5,$t1,validate_loop    # if j==i,exit multiplication.and go to validate_loop
	addu $t2,$t2,$t3             # Add mul_sum += previous
	addi $t5,$t5,1               # j+=1
	j multiply

validate_loop:
	
	beq $t1,$t0,factorial_loop   # if i==k,we have successfully calculated the factorial for the integer with value k
				     # we will go to factorial_loop again to find the factorial for k+1 th integer
	j loop
	
	
exit:
	li $v0,1
	move $a0,$t2     # print the factorial of the last element to check  things are working fine   
	syscall
	
	li $v0,10
	syscall
