#include <stdio.h>
/*
	power function in assembly
*/

extern int asm_power();
extern int asm_powerEx(int n, int exp);

 


int main() {

	int num = 18;
	int result = asm_power(num);
	printf("Power of %d is %d\n", num, result);

	
	int exp = 3;
	result = asm_powerEx(num, exp);
	printf(" %d to the power %d is %d\n", num, exp, result);
 
	return 0;
}
