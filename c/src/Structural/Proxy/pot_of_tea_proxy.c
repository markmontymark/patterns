
//PotOfTeaProxy.java - the Proxy

#include "pot_of_tea.h"
#include "stdlib.h"

typedef struct pot_of_tea_proxy pot_of_tea_proxy_t;
struct pot_of_tea_proxy
{
	pot_of_tea_t * pot;
};
#define pot_of_tea_proxy_s sizeof(pot_of_tea_t)

pot_of_tea_proxy_t * pot_of_tea_proxy_new()
{
	pot_of_tea_proxy_t * proxy = malloc(pot_of_tea_proxy_s);
	proxy->pot = pot_of_tea_new();
	return proxy;
}
void pot_of_tea_proxy_free(pot_of_tea_proxy_t * proxy)
{
	if(proxy == NULL)
		return;
	pot_of_tea_free( proxy->pot);
	free(proxy);
}

char * pot_of_tea_proxy_pour_tea( pot_of_tea_proxy_t * proxy )
{
	return pot_of_tea_pour_tea( proxy->pot );
}
