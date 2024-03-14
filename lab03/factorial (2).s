.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi t1,x0,1     #count initialized with 1
    addi t2,x0,1     #iterating variable initialized
loop:
    mul t2,t2,t1     #logic to multiply contents of t1 and t2 and store them in t2
    beq t1,a0,finish # condition check
    addi t1,t1,1     # increment in count variable
    j loop           #jump to loop 
    
finish:            
    add a0,x0,t2    #to save the value of t2 in a0 
    jr ra           #control back to the point where the function was called from