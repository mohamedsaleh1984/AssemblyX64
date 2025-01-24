

externdef CreateFileA: proc

.const
GENERIC_READ = 80000000h
CREATE_ALWAYS = 2

.data
filename db "D:\AssemblyX64\file.txt",0

.code

main proc 
	lea rcx, filename
	mov edx, GENERIC_READ
	xor r8d,r8d
	xor r9,r9

	push 0				;from last parameter
	push 0
	push CREATE_ALWAYS

	sub rsp, 32
	call CreateFileA	
	add rsp, 32+24			; last three variables + spell space

	ret
main endp

end