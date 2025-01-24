externdef CreateFileA:proc

.const

.data

.code


; To maintain the Stack Pointer before and after the proc,
; we push rbp (current value in Base Pointer)
; move Stack Pointer address to rbp
; ....proc instruction 1
; ......
; ....proc instruction n
; move back rbp to rsp 
; pop rbp

; This trick doesn't guarantee that STACK Segment will be empty or Zeros
; we are just maintaining the RSP address.
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