.const

.data

.code

main proc 
	
	; prologue
	push rbp			; push rbp value on the stack
	mov rbp, rsp		; take copy of rsp before calling the function

	push 0				
	push 1
	push 2
	push 3

	; epilogue
	mov rsp, rbp		; move the rsp back to the original address from rbp
	pop rbp				; pop the original value of rbp from the stack.

	ret
main endp

end