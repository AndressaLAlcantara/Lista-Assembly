.data
	msg1: .asciiz "\nDigite o primeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nPrimeiro registrador após a troca: "
	msg4: .asciiz "\nSegundo registrador após a troca: "
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
	
	#Trocando os valores
	add $t2, $t0, 0  #guardar o primeiro valor
	add $t0, $t1, 0 #primeiro recebe segundo
	add $t1, $t2, 0 #segundo recebe o primeiro
	
	#Mostrar o primeiro registrador após a troca
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	#Mostrar o segundo registrador após a troca
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	#Encerrar
	li $v0, 10
	syscall
	
	