.text
.globl main
main:
    addi $sp,$sp,-32
    addi $3,$0,23
    sw   $3,0($sp)
    la   $5,0($sp)
    la   $6,16($sp)
    lb   $8,0($5)
    sb   $8,0($6)
    lb   $10,0($6)
    li   $v0,10
    syscall


#reg 10 contains the copied value from the source destination
