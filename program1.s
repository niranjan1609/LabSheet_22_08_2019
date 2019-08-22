.data
NL: .asciiz "\n"
.text
.globl main
main:
addi $t0,$zero,20
move $a0,$t0
li $v0,1
syscall
la $a0,NL
li $v0,4
syscall
addi $t1,$t0,5
ori $t1,$t1,2

move $a0,$t1
li $v0,1
syscall
li $v0,10
syscall