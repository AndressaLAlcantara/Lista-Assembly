.data
	msg1: .asciiz "\nDigite o valor a ser convertido (real - dólar): "
	msg2: .asciiz "\nValor convertido em dólar: "
.text
main:
	#Valor em real
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0

	#Conversão
	mul $t1, $t0, 5     #O valor em dólar ($t1) é o valor em real ($t0) vezes 5
	
	#Mostrar mensagem
	li $v0, 4
	la $a0, msg2
	syscall
	
	#Mostrar resultado
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	#Encerrar
	li $v0, 10
	syscall
	
	