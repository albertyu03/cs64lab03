# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here
	#first input
	li $v0, 5
	syscall
	move $t0, $v0
	#second input
	li $v0, 5
	syscall
	move $t1, $v0
	#third input
	li $v0, 5
	syscall
	move $t2, $v0
	#a-b
	sub $t0, $t0, $t1
	#64*a-b
	sll $t0, $t0, 6
	#100*c
	li $t3, 100
	mult $t2, $t3
	mflo $t2
	#adding
	add $a0, $t0, $t2
	li $v0, 1
	syscall
	#exit
	j exit

exit:
	li $v0, 10
	syscall

