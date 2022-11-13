	.file	"code-on-c.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Input digits in one line in any format. "
.LC1:
	.string	"%s"
	.align 8
.LC2:
	.string	"If you want to end the input, press Enter."
.LC3:
	.string	"Incorrect input!"
	.text
	.globl	input_numbers
	.type	input_numbers, @function
input_numbers:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L6:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 49
	je	.L2
	cmp	DWORD PTR -8[rbp], 50
	je	.L2
	cmp	DWORD PTR -8[rbp], 51
	je	.L2
	cmp	DWORD PTR -8[rbp], 52
	je	.L2
	cmp	DWORD PTR -8[rbp], 53
	je	.L2
	cmp	DWORD PTR -8[rbp], 54
	je	.L2
	cmp	DWORD PTR -8[rbp], 55
	je	.L2
	cmp	DWORD PTR -8[rbp], 56
	je	.L2
	cmp	DWORD PTR -8[rbp], 57
	je	.L2
	cmp	DWORD PTR -8[rbp], 32
	je	.L2
	cmp	DWORD PTR -8[rbp], 10
	jne	.L3
.L2:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	mov	edx, DWORD PTR -8[rbp]
	mov	ecx, edx
	cdqe
	lea	rdx, input.2[rip]
	mov	BYTE PTR [rax+rdx], cl
	jmp	.L7
.L3:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, empty.1[rip]
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -8[rbp]
	cmp	al, 10
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, input.2[rip]
	mov	BYTE PTR [rax+rdx], 0
	lea	rax, input.2[rip]
.L5:
	leave
	ret
	.size	input_numbers, .-input_numbers
	.globl	convert_to_rome
	.type	convert_to_rome, @function
convert_to_rome:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi # const char *digits - переданный параметр, кладётся в rdi
	mov	DWORD PTR -4[rbp], 0    # int index = 0 - параметр, инициализированный в функции
	mov	DWORD PTR -8[rbp], 0    # int index_of_input = 0 - параметр, инициализированный в функции
	jmp	.L9
.L19:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -9[rbp], al
	cmp	BYTE PTR -9[rbp], 49
	jne	.L10
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L10:
	cmp	BYTE PTR -9[rbp], 50
	jne	.L12
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L12:
	cmp	BYTE PTR -9[rbp], 51
	jne	.L13
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L13:
	cmp	BYTE PTR -9[rbp], 52
	jne	.L14
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	jmp	.L11
.L14:
	cmp	BYTE PTR -9[rbp], 53
	jne	.L15
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	jmp	.L11
.L15:
	cmp	BYTE PTR -9[rbp], 54
	jne	.L16
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L16:
	cmp	BYTE PTR -9[rbp], 55
	jne	.L17
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L17:
	cmp	BYTE PTR -9[rbp], 56
	jne	.L18
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L18:
	cmp	BYTE PTR -9[rbp], 57
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 88
.L11:
	add	DWORD PTR -8[rbp], 1
	cmp	BYTE PTR -9[rbp], 32
	je	.L9
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 32
.L9:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L19
	lea	rax, output.0[rip]  # перенос результата
	pop	rbp
	ret     # выход из функции
	.size	convert_to_rome, .-convert_to_rome
	.section	.rodata
.LC4:
	.string	"\n"
.LC5:
	.string	"%s %s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	input_numbers
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	convert_to_rome
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.local	input.2
	.comm	input.2,1000,32
	.local	empty.1
	.comm	empty.1,1,1
	.local	output.0
	.comm	output.0,5000,32
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
