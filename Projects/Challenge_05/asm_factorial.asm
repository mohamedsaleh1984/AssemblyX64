;Author: Mohamed Saleh
;Date: 01/16/2025

.code

; asm_factorial proc to compute factorial

asm_factorial proc
	xor rdx,rdx				; set rdx to zero
	mov rdx,rcx				; move the rcx (parameter 1) to rdx
start:
	dec rcx					; decement rcx which is the parameter
	imul rdx,rcx			; multiply rdx by rcx and store the value in rdx

	cmp rcx, 1				; if rcx is 1 then ZF=1 so the jump won't happen and program keep execution
	jne start				; Jump back to start as long as ZF=0
	
	mov eax, ebx			; copy the lower part of rdx to eax to avoid register size issue.
	ret						; Return from asm_power
asm_factorial endp


end