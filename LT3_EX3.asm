.data
	msg1: .asciiz "\nDigite o mês de nascimento: "
	msg2: .asciiz "\nDigite o ano de nascimento: "
	msg3: .asciiz "\nDigite o mês atual: "
	msg4: .asciiz "\nDigite o ano atual: "
	msg5: .asciiz "\nIdade da pessoa em meses: "
.text
main:
	#Mês de nascimento
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#Ano de nascimento
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Mês atual
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Ano atual
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#Calculando tudo
	sub $t4, $t3,$t1
	mul $t5, $t4, 12
	add $t6, $t5, $t2
	sub $t7, $t6, $t0
	
	#Mostrar mensagem
	li $v0, 4
	la $a0, msg5
	syscall

	#Mostrar resultado
	li $v0, 1
	add $a0, $t7, 0
	syscall

	#Encerrar
	li $v0, 10
	syscall
	
	
	
	