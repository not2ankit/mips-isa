.text
.globl main
main:
    addi $sp,$sp,-16
    addi $4,$0,10
    addi $16,$0,66
    addi $17,$0,77
    addi $18,$0,88
    addi $19,$0,99
    addi $20,$0,22
    sw   $16,0($sp)
    sw   $17,4($sp)
    sw   $18,8($sp)
    sw   $19,12($sp)
    sw   $20,16($sp)
    addi $16,$0,0
    addi $17,$0,1
    add  $18,$16,$17
    addi $19,$0,1
    j    branch


branch:
    slti $20,$4,2
    beq  $19,$20,exit
    add  $18,$16,$17
    add  $16,$0,$17
    add  $17,$0,$18
    sub  $4,$4,$19
    j    branch


exit:
    li  $v0,4
    la  $a0,fib
    syscall
    li  $v0,1
    add $a0,$0,$18
    syscall
    lw  $16,0($sp)
    lw  $17,4($sp)
    lw  $18,8($sp)
    lw  $19,12($sp)
    lw  $20,16($sp)
    #addi $sp,$sp,16
    li $v0,10
    syscall


.data
fib:   .asciiz "Final register val :"
