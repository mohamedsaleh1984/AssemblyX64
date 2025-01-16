; Using MessageBoxA in Assembly x64
; Mohamed Saleh
; 01/15/2025

; Data Segment 
.data
message db "Assembly is a low level programming language",0
caption db "learning assembly",0

;code/text Segment
.code
externdef MessageBoxA:proc	; WinAPI MessageBoxA function

main proc 
	sub rsp,28h				; reserve 40 bytes (32 by convention, 8 for mem) x64 convention
	xor	rcx,rcx				; set rcx to zero (Parameter1) 
	mov rdx, offset message	; store the address of message in rdx (Parameter2)
	mov r8, offset caption	; store caption address in r8 (Parameter3)
	xor r9,r9				; set r9 to zero (Parameter 4)
	call MessageBoxA		; call MessageBox
	add rsp, 28h			; Free Reserved space, x64 convention
	ret 
main endp

end