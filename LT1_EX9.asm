.data
	msg1: .asciiz "\nDigite o primeiro numero inteiro: "
	msg2: .asciiz "\nDigite o segundo numero inteiro: "
	msg3: .asciiz "\nDivisao: "
.text
main:
	#Primeiro número
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0,5
	syscall
	add $t0, $v0, 0
	
	#Segundo número
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0,5
	syscall
	add $t1, $v0, 0
	
	#Verificar se o segundo número é positivo
lert2:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beq $t1, $zero, lert2

	#Divisão
	div $t0, $t1
	mflo $t2

	#Mostrar mensagem
	li $v0, 4
	la $a0, msg3
	syscall
	
	#Mostrar resultado
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	#Encerrar	
	li $v0, 10
	syscall