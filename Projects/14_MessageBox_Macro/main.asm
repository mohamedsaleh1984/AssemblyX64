; Author: Mohamed Saleh
; Date: 01/24/2025
; Purpose: Using MASM64 git repo, MACROS for 64bit Arch
; After download masm64-SDK, place masm64 in C directory

; includes
; masm64rt includes almost all macros definitions
include \masm64\include64\masm64rt.inc

; compile error

; Declare Variables
.data
msg			db	"Learning Assembly is Fun", 0
caption		db	"Learning Assembly", 0

; Code/Text Segment
.code
main proc
	;				hWnd   lpText    lpCaption     uType
	invoke MessageBoxA, 0,  addr msg, addr caption, 0
	ret
main endp

end


;int MessageBoxA(
;  [in, optional] HWND   hWnd,
;  [in, optional] LPCSTR lpText,
;  [in, optional] LPCSTR lpCaption,
;  [in]           UINT   uType
;);
