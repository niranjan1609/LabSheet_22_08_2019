.data
NL: .asciiz "\n"
.text
.globl main
main:
addi $t3,$zero,2 #x value
addi $t5,$zero,1 #temp to store 1
addi $t4,$zero,0 #y value
beq $t3,$zero,IF
beq $t3,$t5,ELSEIF
addi $t4,$zero,100
move $a0,$t4
li $v0,1
syscall
li $v0,10
syscall

IF:
addi $t4,$t4,1
move $a0,$t4
li $v0,1
syscall
li $v0,10
syscall

ELSEIF:
sub $t4,$t4,$t5
move $a0,$t4
li $v0,1
syscall
li $v0,10
syscall

