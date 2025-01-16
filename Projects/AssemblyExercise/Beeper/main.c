// using memory address
// LOUD SOUND-------------------WARNING
#include <stdio.h>

extern void Beeper( int* sound,int soundCount);

int main() {
	int sounds[] = {
		1000,1500,	// Frequency, Duration
		700,100,
		900,600,
		800,2000,
		444,1700
	};

	// 12/2 = 6
	Beeper(sounds,6);

	return 0;
}