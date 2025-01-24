; Author: Mohamed Saleh
; Date: 01/24/2025
; Purpose: Using Local variable using local keyword

; Extern Functions 
externdef CreateFileA:proc
externdef WriteFile:proc
externdef CloseHandle:proc

; Constants
.const
GENERIC_WRITE = 40000000h
CREATE_ALWAYS = 2

; Declare Variables
.data
filename	db	"D:\AssemblyX64\Asm.txt",0
text		db	"Assembly is a low level programming language",0	

; Using local will save us from doing the following ourselves.
; 1. prologue, epilogue
; 2. Stack Alignment
; MASM will do all this work for us.

; Code/Text Segment
.code
main proc 
	local written:dword		; Reserve Local Variables.
	;=====================================================================================
	; Standard Used Registers
	lea rcx, filename		; store the address of filename string into rcx	=> lpFileName
	mov	edx, GENERIC_WRITE	; store the const value => dwDesiredAccess
	xor r8d,r8d				; unset r8d => dwShareMode
	xor r9,r9				; unset r9 => lpSecurityAttributes
	; Using stack pass remaining parameters from right to left according to the function 
	; definition
	
	push 0					; parameter value => hTemplateFile
	push 0					; parameter value => dwFlagsAndAttributes
	push CREATE_ALWAYS		; parameter value => dwCreationDisposition
	sub rsp,32				; Adding Spell Space
	call CreateFileA		; call CreateFileA and return handle in RAX
	; Check the return value from CreateFileA
	test rax, rax			; prep to check rax value
	js exit;				; sign bit is 1 means, failed to create file..Exit the program

	; Standard Used Registers
	mov rbx, rax			; store RAX (File Handle)
	mov rcx, rax			; get the file handle and move it to rcx => hFile
	lea rdx, text			; Store the address of the text => lpBuffer
	mov r8d, sizeof text	; number of bytes, using sizeof => nNumberOfBytesToWrite
	lea r9, written			; ref to variable to strore number of written bytes => lpNumberOfBytesWritten
	sub rsp,8				; to follow 16 byte alignment
	; Using Stack
	push 0					; push last parameter to the stack => lpOverlapped
	call WriteFile			; call WriteFile and return result in RAX
	; Check the return value from WriteFile
	test rax, rax			; prep to check rax value
	jz exit;				; zero bit is 1 means, failed to write..Exit the program

	; Standard Used Registers
	mov rcx, rbx			; move file handle from rbx (File Handle) to rcx
	call CloseHandle		; Call CloseHandle
	;==========================================================================
exit:
	ret
main endp

end



