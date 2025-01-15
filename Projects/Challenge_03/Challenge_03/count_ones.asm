.code

; rcx will be the parameter value from the caller
CountOneBits proc 
	xor rax, rax		; Set RAX to ZERO

again:
	shr rcx, 1			; Shift rcx one bit right, store the shifted bit to carry bit flag
	jnc skip			; if carry bit is zero jump to skip to avoid increment rax
	inc rax				; increament rax by 1
skip:
	test rcx,rcx		; clear the carry bit 
	jnz again			; Jump to again label if zero flag is one

	ret
CountOneBits endp

end