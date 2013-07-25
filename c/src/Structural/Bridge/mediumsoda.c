#include "stdio.h"
#include "SodaImp.h"

//MediumSoda - one of two classes extending the Abstract

void mediumsoda_pourSoda() 
{
	int i;
	void (*pourSodaImp)() = SodaImp_get();
	for (i = 0; i < 2; i++) 
	{
		printf("...glug...\n");
		pourSodaImp();
	}
}

