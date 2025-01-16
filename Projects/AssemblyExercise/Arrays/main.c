#include <stdio.h>
#include <stdint.h>

#ifndef _countof
#define _countof(x)(sizeof(x)/sizeof(x[0]))
#endif // !_countof

extern int64_t asm_arraySum(int* arr, int count);


int64_t sum(int64_t* arr, int count) {
	int64_t result = 0;
	for (int i = 0; i < count; i++) {
		result += arr[i];
	}
	return result;
}


int main() {
	int arr[] = { 5,6,8,9,7 };

	printf("size of num array is %lld", sizeof(arr));
	printf("element size is %lld", sizeof(arr[0]));
	printf("number of elements is %lld", sizeof(arr) / sizeof(arr[0]));
	printf("number of elements is %lld using macro ", _countof(arr));
	
	printf("number of elements is %lld using macro ", sum(arr, _countof(arr)));
	// Assembly Proc
	printf("number of elements is %lld using assembly ", asm_arraySum(arr, _countof(arr)));
		 
	return 0;
}