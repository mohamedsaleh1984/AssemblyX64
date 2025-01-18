.code

main proc 
	mov rax,C
	ret
main endp


.data				; Stores Initialzed Variables
db 1, 2, 3 ,4				
dw 1000h, 2000h, 3000h, 4000h

.data?				; Stores Uninitialzed Variables
dd 10 dup (?)
myvalue db ?

.const				; Stores const Variables
Count	dd		12345678h		; dword (4 bytes)
pi		real4	3.1415926		; float (4 bytes)
C		dq		299792458		; Quad Word (8 bytes) 
end