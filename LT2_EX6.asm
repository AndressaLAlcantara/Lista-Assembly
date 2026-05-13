.data
	msg1: .asciiz "\nDigite o primeiro número inteiro: "
	msg2: .asciiz "\nMaior: "
	msg3: .asciiz "\nMenor: "
.text
main:
	#Contador
	li $t0, 0
	
loop:
	li $t7, 10
	beq $t0, $t7, fim
	
	#Mostrar mensagem
	li $v0, 4
	la $a0, msg1
	syscall
	
	#Ler o número
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Se o número dado for negativo
	bltz $t1, loop
	
	#Primeiro número
	beq $t0, $zero, primeiro
	
	#Ver o maior
	bgt $t1, $t2, maior
	
continuar:
	
	#Ver o manor
	blt $t1, $t3, menor

continuar2:
	li $t7, 1 #contador++ - incrementado
	add $t0, $t0, $t7
	
	j loop

primeiro:
	add $t2, $t1, 0
	add $t3, $t1, 0
	
	li $t7, 1
	add $t0, $t0, $t7

	j loop
	
maior:
	add $t2, $t1, 0
	j continuar

menor:
	add $t3, $t1, 0
	j continuar2

fim:
	#Mostrar maior
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 1
	add $a0, $t2, 0
	syscall

	#Mostrar menor
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	add $a0, $t3, 0
	syscall

	#Encerrar
	li $v0, 10
	syscall