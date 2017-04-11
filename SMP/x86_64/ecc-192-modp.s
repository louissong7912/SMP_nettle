	.file "ecc-192-modp.asm"
	.text
	.align 16
.globl nettle_ecc_192_modp
.def nettle_ecc_192_modp
.scl 2
.type 32
.endef
nettle_ecc_192_modp:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
	mov	16(%rsi), %rdx
	mov	24(%rsi), %r8
	mov	40(%rsi), %r9
	xor	%r10, %r10
	xor	%r11, %r11
	add	%r9, %rdx
	adc	%r9, %r8
	setc	%r11b
	mov	8(%rsi), %rcx
	mov	32(%rsi), %r9
	adc	%r9, %rcx
	adc	%r9, %rdx
	setc	%r10b
	mov	(%rsi), %rdi
	adc	%r8, %rdi
	adc	%r8, %rcx
	adc	$0, %r11
	add	%r10, %rcx
	adc	%r11, %rdx
	setc	%r10b
	adc	$0, %rdi
	adc	%r10, %rcx
	adc	$0, %rdx
	mov	%rdi, (%rsi)
	mov	%rcx, 8(%rsi)
	mov	%rdx, 16(%rsi)
      pop	%rsi
    pop	%rdi
	ret
