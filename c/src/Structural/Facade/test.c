

// testing the Facade

#include "cuppamaker.h"
#include "teacup.h"
#include "stdio.h"
#include "stdlib.h"

int main(int argc, char ** argv )
{
	teacup_t * teaCup = cuppamaker_makeACuppa();
	char * msg = teacup_to_string(teaCup);
	printf("%s\n",msg);
	teacup_free(teaCup);

	return 0;
}
