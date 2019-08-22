	.data
a: .word 0 0 0 0
	.text
	.globl main
main:
	la $t1, a		
	li $t2, 3		
	sw $t2, 0($t1)		
	lw $t2, 0($t1)		
	addi $t2, $t2, -1	
	sw $t2, 12($t1)		
	li $v0, 10
	syscall