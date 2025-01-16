.code

GetNumber proc 
	mov eax,500		;lower rax	32bit 
	mov rdx,2000	;place temp in rdx
	shl rdx, 32		;Shift left 32 bit
	or rax,rdx		;or rax (64bit) with rdx(shifted)
	ret
GetNumber endp

end