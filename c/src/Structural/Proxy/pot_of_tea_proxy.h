
//PotOfTeaProxy - the Proxy

#ifndef C_PATTERNS_PROXY_PROXY_H_
#define C_PATTERNS_PROXY_PROXY_H_

#include "pot_of_tea.h"

typedef struct pot_of_tea_proxy pot_of_tea_proxy_t;
struct pot_of_tea_proxy
{
	pot_of_tea_t * pot;
};
#define pot_of_tea_proxy_s sizeof(pot_of_tea_t)

pot_of_tea_proxy_t * pot_of_tea_proxy_new();
void pot_of_tea_proxy_free(pot_of_tea_proxy_t * proxy);
char * pot_of_tea_proxy_pour_tea( pot_of_tea_proxy_t * proxy );

#endif
