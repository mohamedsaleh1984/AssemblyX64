### Assembly
Personal Repo for x64 Assembly learning and practice.

[Youtube Video Source](https://www.youtube.com/watch?v=nGivmJMlBH8)

## How to Move around 

[Books](Books/)

[Intel-Arm-Manuals](Manuals/)

[Tools](Tools/)

## VS Extensions for better Dev Experience 
1. AsmDude2
2. VSColorOutput

## Projects 

1. Configure c project to work with assembly in VS 2022
[C With Assembly](Projects/VS-ASM-TEMPLATE/Assembly%20Project.zip)

2. Call asm proc from c program
[Call ASM proc in c](Projects/AsmBasic/)

3. Assembly x64 proc calling convention
[x64 Calling convention](Projects/x64%20Calling%20Convention/)

4. Build asm using MASM
[Link](Projects/build-asm-using-masm/)

5. Challange 1 [Link](Projects/Challenge_01/) Register Manipulation Problem [statement](/Projects/Challenges.txt)

6. Challange 2 [Link](Projects/Challenge_02/) Win32API Calling Problem [statement](/Projects/Challenges.txt)

7. Challange 3 [Link](Projects/Challenge_03/) CountOnes Problem [statement](/Projects/Challenges.txt)

8. Challange 4 [Link](Projects/Challenge_04/) Power function Problem [statement](/Projects/Challenges.txt)

9. Challange 4 [Link](Projects/Challenge_05/) Factorial Problem [statement](/Projects/Challenges.txt)

10. Arrays and Memory Manipulation in x64 assembly [LINK](/Projects/Arrays)

11. Beeper Project [Link](Projects/Beeper/) Custom Beeper 

12. Sections, LEA, Addressing Modes

#### Addressing Modes
1. Register Addressing Mode (Move values from Register to Register WITH SAME SIZE)
2. RIP (Relative Addressing Mode) Using Instruction Pointer Plus/Minus offset value (in Bytes)
3. Register Indirect Addressing Mode (Use the address stored in a register)
```
    mov [rax], ebx ; since we use the address we shouldn't worry about the register size
```
4. Indirect Offset Addressing Mode 
```
    mov [rax+ 10h], cx      ; Move data from CX to the address stored in RAX+10h(Bytes) offset 
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
