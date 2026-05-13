.data
	msg1: .asciiz "\nDigite o primeiro número inteiro: "
	msg2: .asciiz "\nDigite o segundo número inteiro: "
	msg3: .asciiz "\nMaior: "
	msg4: .asciiz "\nSomatório dos números ímpares entre eles: "

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

se:
	bgt $t0, $t1, maior

senao:
	add $t2, $t1, 0
	j fimse

maior:
	add $t2, $t0, 0

fimse:

	# Mostrar mensagem
	li $v0, 4
	la $a0, msgMaior
	syscall

	# Mostrar resultado
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	