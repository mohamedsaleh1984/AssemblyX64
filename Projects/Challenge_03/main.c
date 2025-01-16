#include <stdio.h>
#include <Windows.h>

extern INT64 CountOneBits();

int main() {

	int num = 13;
	INT64 result = CountOneBits(num);
	printf("%d one bits = %lld\n", num, result);

	return 0;
}