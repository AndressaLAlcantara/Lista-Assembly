.data
	msg1: .asciiz "\nDigite um numero (negativo para sair): "
	msg2: .asciiz "\n[0-25]: "
	msg3: .asciiz "\n[26-50]: "
	msg4: .asciiz "\n[51-75]: "
	msg5: .asciiz "\n[76-100]: "
.text
main:
	# contadores
	li $t0, 0   # [0-25]
	li $t1, 0   # [26-50]
	li $t2, 0   # [51-75]
	li $t3, 0   # [76-100]

loop:
	# ler numero
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t4, $v0, 0   # numero

	# se negativo - fim
	blt $t4, $zero, fim

	# validar (se > 100 - ignora)
	li $t5, 100
	bgt $t4, $t5, loop

	# intervalos 

	# [0-25]
	li $t5, 25
	ble $t4, $t5, faixa1

	# [26-50]
	li $t5, 50
	ble $t4, $t5, faixa2

	# [51-75]
	li $t5, 75
	ble $t4, $t5, faixa3

	# [76-100]
	addi $t3, $t3, 1
	j loop

faixa1:
	addi $t0, $t0, 1
	j loop

faixa2:
	addi $t1, $t1, 1
	j loop

faixa3:
	addi $t2, $t2, 1
	j loop

fim:
	# mostrar resultados

	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t0, 0
	syscall

	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t1, 0
	syscall

	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t3, 0
	syscall

	# encerrar
	li $v0, 10
	syscall