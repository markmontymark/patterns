
#include "pot_of_tea.h"
#include "pot_of_tea_proxy.h"

#include "stdlib.h"
#include "stdio.h"

int main( int argc, char ** argv )
{
	pot_of_tea_proxy_t * proxy = pot_of_tea_proxy_new();
	printf("instantiating pot_of_tea_proxy\nTest: pouring tea: %s\n",pot_of_tea_proxy_pour_tea( proxy ) );
	pot_of_tea_proxy_free( proxy );

	return 0;
}
