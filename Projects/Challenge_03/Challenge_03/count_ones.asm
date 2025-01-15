.code

CountOneBits proc 
	xor rax, rax		; Set RAX to ZERO

again:
	shr rcx, 1
	jnc skip
	inc rax
skip:
	test rcx,rcx
	jnz again

	ret
CountOneBits endp

end