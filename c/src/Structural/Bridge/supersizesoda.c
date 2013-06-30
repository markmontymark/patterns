

#include "stdio.h"

//SuperSizeSoda - two of two classes extending the Abstract

void supersizesoda_pourSoda() 
{
	int i;
	void (*pourSodaImp)() = SodaImp_get();
   for (i = 0; i < 5; i++) 
	{
		printf("...glug...\n");
		pourSodaImp();
	}
}
