
#### Addressing Modes
1. Register Addressing Mode (Move values from Register to Register WITH SAME SIZE)
2. RIP (Relative Addressing Mode) Using Instruction Pointer Plus/Minus offset value (in Bytes)
3. Register Indirect Addressing Mode (Use the address stored in a register)
```
    mov [rax], ebx ; since we use the address we shouldn't worry about the register size
    mov [rcx], al
    mov [rbx], dword ptr 12; MUST mention the data type

```
4. Indirect Offset Addressing Mode 
```
    mov [rax + 10h], cx      ; Move data from CX to the address stored in RAX+10h(Bytes) offset 
    mov al, [rsi-3]          ; -/+ to move up/dow in bytes scale
```
5. Scaled Indexed Addressing Mode using [Base + Index * Scale + Displacement] using mainly for arrays or sequential data/memory
```
Base: the initial position
Index: Number of elements to moving to
Scale: Size of the data (1, 2, 4, 8) bytes
Displacement: offset value

; if we have array [0,4,6] and the size of each element is 2 bytes, to reach to second element in the array.
; assuming storing 1 in rsi
mov [rax + rsi * 2 ], edx   

add rbx, [rsi + rdi * 8 + 72]
```

#### Stack (Depends on the compiler might be upside down as in MASM)

RSP: Stack Pointer Points to the TOP of the stack (Highest Address in Stack Segment)

|Instruction | Details| Sample|Notes|
|------------|--------|-------|-----|
|push|Decremnet the RSP and copy the value (reg64/mem64/reg16/mem16/const32) |``` push eax ```| zero extension to 64-bit|
|pop|Place the value (reg64/mem64/reg32/mem32/reg16/mem16)to the resgister and increment the RSP |``` pop eax```|zero extension to 64-bit|
|mov|copy the value from RSP to RAX without chaning RSP position | ``` mov RAX,[RSP] OR mov RAX,[RSP + 8] ``` |Doesn't change RSP position|
|add|used to move the RSP backword the stack segment|``` add RSP,16 ``` | Move backword 2 element as if pop twice, changes RSP position|
|sub|used to move the RSP foward the stack segment|``` sub RSP,16 ``` | Move foward 2 element to reserve memory for something| change RSP position|

#### Function Parameters, x64 Conventions, Stack alignment
RSP needs to follow 16bit alignment, to know which alignment the stack following we can check the lest significant byte 
if it's 8 then it follows 8 bytes alignment, the spell space will be 40 to adjsust the RSP to follow 16 byte alignment
if it's 0 then it follows 16 bytes alignment, the spell space will be 32

RSP initial position stores the function (Entry Point Caller) that called our main proc and that used call instruction therefore, has to be pushed so when 
we return from main proc it will return to the called. 
Note: The stack might switch between 8/16 based on the number of pushed values in the stack (even 16, odd 8)so we need to be careful before we make WinAPI call.