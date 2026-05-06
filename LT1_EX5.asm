.data
	msg1: .asciiz "\nDigite o tamanho do primeiro cateto: "
	msg2: .asciiz "\nDigite p tamanho do segundo cateto: "
	msg3: .asciiz "\nHipotenusa: "
.text
main:
	#Primeiro cateto
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0,5
	syscall
	add $t0, $v0, 0
	
	#Segundo cateto
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	#Hipotenusa
	mul $t2,$t0, $t0          
	mul $t3, $t1, $t1
	add $t4, $t2, $t3

	li $t5, 1 #contador
loop:
	mul $t6, $t5, $t5
	bgt $t6, $t4, fim
	
	add $t5, $t5, 1
	j loop
fim:
	sub $t5, $t5, 1
	
	#Mostrar mensagem
	li $v0, 4
	la $a0, msg3
	syscall
	
	#Mostrar resultado (salário bruto)
	li $v0, 1
	add $a0, $t5, 0
	syscall

	#Encerrar	
	li $v0, 10
	syscall
