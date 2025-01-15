; Calling Beep Win32 API function from ASM file
; Mohamed Saleh
; 01/15/2025

.code
externdef Beep:proc	; WinAPI Beep function

main proc 
	sub rsp,28h				; reserve 40 spill space							x64 convention
	mov	rcx,500				; set rcx to 500 (Parameter1)  Frequency = 500Hz
	mov rdx, 2000			; set rdx to 2000 (Parameter2) Duration = 2000 ms
	call Beep				; call Beep function
	add rsp, 28h			; Free Reserved space								x64 convention
	ret						; Return from main
main endp

end