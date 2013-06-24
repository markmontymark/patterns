
#ifndef C_PATTERNS_DECORATOR_TEA_H_
#define C_PATTERNS_DECORATOR_TEA_H_

typedef struct tea tea_t;
struct tea
{
	void (* steep_tea )( tea_t *);
	int teaIsSteeped;
};
#define tea_s sizeof(tea_t)


#endif
