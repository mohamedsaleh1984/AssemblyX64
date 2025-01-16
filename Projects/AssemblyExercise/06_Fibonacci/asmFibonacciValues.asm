.code

asmFibonacciValues proc 
	cmp rdx,0				;check if num is 0 
	jle exit				;jump if less or equal

	mov r8,1				
	mov r9,1

	mov [rcx], r8			; set the value in the array, rcx stors the address of the array from the parameter
	dec edx					; decrement the edx
	jz exit					; if edx is zero exit

	mov[rcx+8], r9			; second
	dec edx					; decrement the edx
	jz exit					; if edx is zero exit

	add rcx, 16				;move 16 bytes in rcx 
fibloop:
	mov r10,r8
	add r10,r9
	mov [rcx],r10
	dec edx					; decrement the edx
	jz exit					; if edx is zero exit
	add rcx, 8				; move one element
	mov r8,r9
	mov r9,r10
	jmp fibloop
exit:
	ret
asmFibonacciValues endp

end