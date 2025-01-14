#include <stdio.h>
#include <Windows.h>

// for c Language
extern int GetNumber();

// for cpp extension to avoid name mangling
// extern "C" int GetNumber();

int main() {
	int num = GetNumber();
	printf("num is %d\n", num);
	Beep(500, num);

	return num;
} 