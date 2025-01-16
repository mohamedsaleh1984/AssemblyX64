#include <stdio.h>
#include <stdint.h>
 
extern void asmFibonacciValues(uint64_t* fibArray, int num);

void CFibonacciValues(uint64_t* fibArray, int num) {

	if (num < 1)
		return;
	
	uint64_t a = 1, b = 1;
	fibArray[0] = a;
	if (num == 1)
		return;
	fibArray[1] = b;

	for (int i = 0; i < num - 2; i++) {
		uint16_t c = a + b;
		fibArray[i + 2] = c;
		a = b;
		b = c;
	}
}


int main() {
	int n = 10;


	uint64_t FibonacciValues[50];
	CFibonacciValues(FibonacciValues, n);
	
	for (int i = 0; i < n; i++) {
		printf("%lld ", FibonacciValues[i]);
	}

	printf("\n\n");
	
	
	uint64_t FibonacciValues2[50];
	asmFibonacciValues(FibonacciValues2, n);
	for (int i = 0; i < n; i++) {
		printf("%lld ", FibonacciValues2[i]);
	}


	return 0;
}
