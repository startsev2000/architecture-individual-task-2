	.file	"main.c"
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
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp    # int input_symbol, i
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 0
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
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 49   # ascii 49 - 1
	je	.L2
	cmp	DWORD PTR -4[rbp], 50   # ascii 50 - 2
	je	.L2
	cmp	DWORD PTR -4[rbp], 51   # ascii 51 - 3
	je	.L2
	cmp	DWORD PTR -4[rbp], 52   # ascii 52 - 4
	je	.L2
	cmp	DWORD PTR -4[rbp], 53   # ascii 53 - 5
	je	.L2
	cmp	DWORD PTR -4[rbp], 54   # ascii 54 - 6
	je	.L2
	cmp	DWORD PTR -4[rbp], 55   # ascii 55 - 7
	je	.L2
	cmp	DWORD PTR -4[rbp], 56   # ascii 56 - 8
	je	.L2
	cmp	DWORD PTR -4[rbp], 57   # ascii 57 - 9
	je	.L2
	cmp	DWORD PTR -4[rbp], 32   # ascii 32 - space
	je	.L2
	cmp	DWORD PTR -4[rbp], 10   # ascii 10 - LF ('\0'), while loop end
	jne	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	mov	edx, DWORD PTR -4[rbp]
	mov	ecx, edx
	cdqe
	lea	rdx, input.2[rip]   # input - array of chars
	mov	BYTE PTR [rax+rdx], cl
	jmp	.L7
.L3:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, empty.1[rip] # empty - array of chars
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cmp	al, 10
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, input.2[rip]
	mov	BYTE PTR [rax+rdx], 0
	lea	rax, input.2[rip]
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	input_numbers, .-input_numbers
	.globl	convert_to_rome
	.type	convert_to_rome, @function
convert_to_rome:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -8[rbp], 0    # int index = 0
	mov	DWORD PTR -4[rbp], 0    # int index_of_input = 0;
	jmp	.L9
.L19:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -9[rbp], al
	cmp	BYTE PTR -9[rbp], 49
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73  # ascii 73 - I
	jmp	.L11
.L10:
	cmp	BYTE PTR -9[rbp], 50
	jne	.L12
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L12:
	cmp	BYTE PTR -9[rbp], 51
	jne	.L13
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L13:
	cmp	BYTE PTR -9[rbp], 52
	jne	.L14
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86  # ascii 86 - V
	jmp	.L11
.L14:
	cmp	BYTE PTR -9[rbp], 53
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	jmp	.L11
.L15:
	cmp	BYTE PTR -9[rbp], 54
	jne	.L16
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L16:
	cmp	BYTE PTR -9[rbp], 55
	jne	.L17
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L17:
	cmp	BYTE PTR -9[rbp], 56
	jne	.L18
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 86
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	jmp	.L11
.L18:
	cmp	BYTE PTR -9[rbp], 57
	jne	.L11
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 73
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 88  # ascii 88 - X
.L11:
	add	DWORD PTR -4[rbp], 1
	cmp	BYTE PTR -9[rbp], 32
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, output.0[rip]
	mov	BYTE PTR [rax+rdx], 32
.L9:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L19
	lea	rax, output.0[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
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
.LFB2:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	eax, 0
	call	input_numbers
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	convert_to_rome
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.local	input.2
	.comm	input.2,1000,32     # size of static char input[1000] (in input_numbers)
	.local	empty.1
	.comm	empty.1,1,1
	.local	output.0
	.comm	output.0,5000,32    # size of static char output[5000] (in convert_to_rome)
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
