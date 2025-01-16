#include <stdio.h>
/*
	power function in assembly
*/

extern int asm_factorial(int num);

int main() {

	int num = 5;
	int result = asm_factorial(num);
	printf("Factorial of %d is %d\n", num, result);

	return 0;
}
