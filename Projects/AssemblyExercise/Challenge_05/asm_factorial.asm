;Author: Mohamed Saleh
;Date: 01/16/2025

.code

; asm_factorial proc to compute factorial

asm_factorial proc
	sub rsp,28h				; reserve 40 spill space - x64 convention
	xor rbx,rbx				; set rbx to zero
	mov rbx,rcx				; move the rcx (parameter 1) to rbx
start:
	dec rcx					; decement rcx which is the parameter
	imul rbx,rcx			; multiply rbx by rcx and store the value in rbx

	cmp rcx, 1				; if rcx is 1 then ZF=1 so the jump won't happen and program keep execution
	jne start				; Jump back to start as long as ZF=0
	
	mov eax, ebx			; copy the lower part of rbx to eax to avoid register size issue.
	add rsp, 28h			; Free Reserved space - x64 convention
	ret						; Return from asm_power
asm_factorial endp


end