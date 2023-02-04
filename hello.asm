# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	string1: .asciiz "Hello World 2023!\n"
	string2: .asciiz "The magic number is -42!!!\n"
#Text Area (i.e. instructions)
.text
main:
	li $v0, 5
	syscall
	#printing strings
	la $a0, string1
	li $v0, 4
	syscall
	la $a0, string2
	syscall
	j exit

exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall

