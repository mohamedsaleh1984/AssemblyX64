#include <stdio.h>
#include <Windows.h>
/*
	Set the lower 32-bit of RAX with value 500
	Set the higher 32-bit of RAX with value 2000
*/
extern INT64 GetNumber();

int main() {
	INT64 num = GetNumber();
	printf("number is %lld\n", num);
	return 0;
}
