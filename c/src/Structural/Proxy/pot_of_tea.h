
//PotOfTea - the Pot Of Tea

#ifndef C_PATTERNS_PROXY_POT_H_
#define C_PATTERNS_PROXY_POT_H_

typedef struct pot_of_tea pot_of_tea_t;
struct pot_of_tea
{
	pot_of_tea_t * pot;
};
#define pot_of_tea_s sizeof(pot_of_tea_t)

pot_of_tea_t * pot_of_tea_new();
void pot_of_tea_free(pot_of_tea_t * pot);
char * pot_of_tea_pour_tea( pot_of_tea_t * pot );

#endif
