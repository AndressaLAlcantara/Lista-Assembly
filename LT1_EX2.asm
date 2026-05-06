.data
	msg1: .asciiz "\nDigite a quantidade de camisetas P vendidas: "
	msg2: .asciiz "\nDigite a quantidade de camisetas M vendidas: "
	msg3: .asciiz "\nDigite a quantidade de camisetas G vendidas: "
	msg4: .asciiz "\nTotal arrecadado: "
.text
main:
	#Ccamisetas P
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0,5
	syscall
	add $t0, $v0, 0
	
	#Camisetas M
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Camisetas G
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Calcular
	li $t3, 10
	mul $t4, $t0, $t3          # Camisetas P * 10
	
	li $t3, 12
	mul $t6, $t2, $t3          # Camisetas M * 12
	
	li $t3, 15
	mul $t6, $t2, $t3         # Camisetas G * 15
	
	#Soma
	add $t7, $t4, $t5
	add $t7, $t7, $t6
		
	#Mostrar mensagem
	li $v0, 4
	la $a0, msg4
	syscall
	
	#Mostrar resultado
	li $v0, 1
	add $a0, $t7, 0
	syscall
	
	#Encerrar	
	li $v0, 10
	syscall