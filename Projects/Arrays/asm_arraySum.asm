; Author: Mohamed Saleh
; Date: 01/16/2025
; Program: Compute the sum of int64_t array using assembly


.code

; NOTES::
; RCX stores the address of the array
; RDX stores the value of count

asm_arraySum proc 
	sub rsp,28h			; reserve 40 bytes (32 by convention, 8 for mem) x64 convention
	xor rax, rax		; Zero RAX register
	xor rdx, rdx		; Zero rdx register
sumLoop:
	mov rdx, qword ptr [rcx] ; store the memory address value in rdx from rcx (first parameter)
	add rax, rdx		; 
	add rcx, 8			; add 8 bytes to array address in rcx register so we move to next address
	dec rdx				; decrement the count parameter in rdx register
	jnz sumLoop			; Jump to sumLoop again as long as Flags Register, ZF=0
	add rsp, 28h		; Free Reserved space, x64 convention
	ret					; return from the proc and the sum value stored in rax
asm_arraySum endp

end

; easy peasy lemon squeezy