.code
num QWORD	4		; Decalre a Quad Word variable with value 4.
arr QWORD 1,2,3,4	; Declare Array 

main proc 
	mov		rax, num	; copy the value of num into RAX
	lea		rax, num	; copy the address of num into RAX
	mov		rax, offset num	;copy the address of num into RAX which is equal to lea

	mov		rax, offset arr; Store the address of array BUT we can say array+8 to move to next element
	mov		rax, [offset arr] ; store the first element value in RAX NOT the address

	lea		rax, [arr + 8] ; but we can do that using lea

	ret
main endp

end