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

	INT64 lower = 0;
	lower = num & 0x00000000FFFFFFFF;

	INT64 higher = num;
	higher = higher >> 32;

	printf("RAX register lower %lld and the higher value %lld\n", lower, higher);

	return 0;
}
