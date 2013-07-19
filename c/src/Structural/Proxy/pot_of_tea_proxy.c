
//PotOfTeaProxy.java - the Proxy

#include "pot_of_tea.h"
#include "pot_of_tea_proxy.h"
#include "mem.h"
#include "assert.h"


pot_of_tea_proxy_t * pot_of_tea_proxy_new()
{
	pot_of_tea_proxy_t * proxy;
	NEW(proxy);
	proxy->pot = pot_of_tea_new();
	return proxy;
}
void pot_of_tea_proxy_free(pot_of_tea_proxy_t * proxy)
{
	assert(proxy );
	pot_of_tea_free( proxy->pot);
	FREE(proxy);
}

char * pot_of_tea_proxy_pour_tea( pot_of_tea_proxy_t * proxy )
{
	return pot_of_tea_pour_tea( proxy->pot );
}
