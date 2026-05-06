.data
	msg1: .asciiz "\nDigite a base maior do trapezio: "
	msg2: .asciiz "\nDigite a base menor do trapezio: "
	msg3: .asciiz "\nDigite a altura do trapezio: "
	msg4: .asciiz "\Area: "
.text
main:
	#Base maior do trapézio
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0,5
	syscall
	add $t0, $v0, 0
	
	#Base menor do trapézio
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Altura do trapézio
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0

	#Calcular a área do trapézio
	add $t3,$t0, $t1          #Somando as bases
	mul $t4, $t3, $t2
	div $t5, $t4, 2	

	#Mostrar mensagem
	li $v0, 4
	la $a0, msg4
	syscall
	
	#Mostrar resultado (salário bruto)
	li $v0, 1
	add $a0, $t5, 0
	syscall

	#Encerrar	
	li $v0, 10
	syscall
