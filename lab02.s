
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
    
prog:
    add s0,zero,zero #arxizkopoioume to s0 sto 0
loop:
    beq a1,zero,done #an o pinakas einai kenos tote termatizoume
    lw t1,0(a0) #fortwonoume ston t1 tin timi tou a0
    bne t1,a2,next #an to stoixeio pou briskomaste den einai to zitoume pame sto epomeno
    add s0,a0,zero #an to stoixeio pou briskomaste einai to zitoumeno kratame tin dieythinsi tou sto s0
next:
    addi a0,a0,4 #mia thesi mprosta (+4 epeidh kathe stoixeio einai 4 bits)
    addi a1,a1,-1 #meiwnoume to counter tis epanalhpshs
    j loop
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
