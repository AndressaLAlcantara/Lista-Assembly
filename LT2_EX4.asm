.data
	msg1: .asciiz "\nDigite a primeira nota do aluno: "
	msg2: .asciiz "\nDigite a segunda nota do aluno: "
	msg3: .asciiz "\nDigite a terceira nota do aluno: "
	msg4: .asciiz "n\Digite a quarta nota do aluno: "
	msg5: .asciiz "n\Media: "
	msg6: .asciiz "n\APROVADO"
	msg7: .asciiz "n\EXAME"
	msg8: .asciiz "\nRETIDO"
.text
main:
	#Primeira nota
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#Segunda nota
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Terceira nota
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Quarta nota
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#Cálculo da média
	add $t4, $t0, $t1
	add $t5, $t2, $t3
	add $t6, $t4, $t5
	div $t7, $t6, 4
	
	#Mostrar mensagem
	li $v0, 4
	la $a0, msg5
	syscall
	
	#Mostrar resultado
	li $v0, 1
	add $a0, $t7, 0
	syscall

se:
	li $t8, 6
	bge $t7, $t8, aprovado

senão:
	li $t8, 3
	bge $t7, $t8, exame
	
	j retido
	
aprovado:
	li $v0, 4
	la $a0, msg6
	syscall
	j fimse

exame:
	li $v0, 4
	la $a0, msg7
	syscall
	j fimse

retido:
	li $v0, 4
	la $a0, msg8
	syscall

fimse:
	# Encerrar
	li $v0, 10
	syscall
	


	
	
	