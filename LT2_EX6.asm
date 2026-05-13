.data
	msg1: .asciiz "\nDigite o primeiro número inteiro: "
	msg2: .asciiz "\nDigite o segundo número inteiro: "
	msg3: .asciiz "\nDigite o terceiro número inteiro: "
	msg4: .asciiz "\nDigite o quarto número inteiro: "
	msg5: .asciiz "\nDigite o quinto número inteiro: "
	msg6: .asciiz "\nDigite o sexto número inteiro: "
	msg7: .asciiz "\nDigite o sétimo número inteiro: "
	msg8: .asciiz "\nDigite o oitavo número inteiro: "
	msg9: .asciiz "\nDigite o nono número inteiro: "
	msg10: .asciiz "\nDigite o décimo número inteiro: "
	msg11: .asciiz "\nMaior: "
	msg12: .asciiz "\nMenor: "
	msg13: .asciiz "\nInválido! Digite um número inteiro positivo: "

.text
main:
	#Primeiro valor
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#Segundo valor
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Terceiro valor
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Quarto valor
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#Quinto valor
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 5
	syscall
	add $t4, $v0, 0
	
	#Sexto valor
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 5
	syscall
	add $t5, $v0, 0
	
	#Sétimo valor
	li $v0, 4
	la $a0, msg7
	syscall
	
	li $v0, 5
	syscall
	add $t6, $v0, 0
	
	#Oitavo valor
	li $v0, 4
	la $a0, msg8
	syscall
	
	li $v0, 5
	syscall
	add $t7, $v0, 0
	
	#Nono valor
	li $v0, 4
	la $a0, msg9
	syscall
	
	li $v0, 5
	syscall
	add $t8, $v0, 0
	
	#Décimo valor
	li $v0, 4
	la $a0, msg10
	syscall
	
	li $v0, 5
	syscall
	add $t9, $v0, 0
	
	