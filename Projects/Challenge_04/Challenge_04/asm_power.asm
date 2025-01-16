;Author: Mohamed Saleh
;Date: 01/16/2025

.code

; asm_power proc to compute x to power 2
asm_power proc
	sub rsp,28h				; reserve 40 spill space							x64 convention

	mov rax, 0				; set rax zero
	mov rax,rcx				; set rax = rcx
	imul rax,rax			; multiply rax by rax

	add rsp, 28h			; Free Reserved space								x64 convention
	ret						; Return from asm_power
asm_power endp


asm_powerEx proc
	sub rsp,28h				; reserve 40 spill space, x64 convention
	xor rbx, rbx			; set rbx to zero
	xor eax, eax			; set eax to zero
	mov rbx, rcx			; move value from first parameter rax to rbx
start:
	imul rbx,rcx			; multiply rbx with rax which is second parameter 
	dec rdx
	cmp rdx, 1
	jne start				; Jump back to start as long as ZF=0
	
	mov eax, ebx			; copy the lower part of rbx to eax to avoid register size issue.
	add rsp, 28h			; Free Reserved space, x64 convention
	ret						; Return from asm_power

asm_powerEx endp


end