.code

extern Beep:proc
	 
Beeper proc 
	sub rsp,28h				; reserve 40 bytes (32 by convention, 8 for mem) x64 convention
	mov r12, rcx			; store rcx (array address from first parameter) in r12
	mov r13d, edx			; store parameter2 (count) in r13d (lower 32bit)

soundloop:
	mov ecx, [r12]			; get the value of the address stored in r12 which is the array 
	mov edx, [r12 + 4] 				; get the next
	call Beep

	add r12, 8				; add (8 bytes) to move to the next pair in the array
	dec	r13d				; decrement the counter
	jnz	soundloop			; ZF not 0

	add rsp, 28h			; Free Reserved space, x64 convention
	ret
Beeper endp

end