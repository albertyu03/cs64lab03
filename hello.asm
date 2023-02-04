# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	string1: .asciiz "Hello World 2023!\n"
	string2: .asciiz "The magic number is "
	string3: .asciiz "Enter an integer:\n"
	exclam: .asciiz "!!!\n"
#Text Area (i.e. instructions)
.text
main:
	#print string + input
	li $v0, 4
	la $a0, string3
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	#printing strings
	la $a0, string1
	li $v0, 4
	syscall
	la $a0, string2
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, exclam
	syscall

	j exit

exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall

