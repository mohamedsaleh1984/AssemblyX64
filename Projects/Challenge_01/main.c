#include <stdio.h>
#include <Windows.h>
/*
	Set the lower 32-bit of RAX with value 500
	Set the higher 32-bit of RAX with value 2000
*/
extern INT64 GetNumber();

int main() {
	// call proc from assembly file.
	INT64 num = GetNumber();
	printf("number is %lld\n", num);

	// low value in register RAX
	INT64 lower = 0;
	lower = num & 0x00000000FFFFFFFF;

	// high value in register RAX
	INT64 higher = num;
	higher = higher >> 32;

	// 2sec
	Beep(lower, 2000);

	printf("RAX register lower %lld and the higher value %lld\n", lower, higher);


	return 0;
}
