
#ifndef C_PATTERNS_DECORATOR_TEALEAVES_H_
#define C_PATTERNS_DECORATOR_TEALEAVES_H_

//tealeaves - the decoratee

typedef struct tealeaves tealeaves_t;
struct tealeaves
{
	void (* steep_tea) ();
	int teaIsSteeped;
};
#define tealeaves_s sizeof(tealeaves_t)

tealeaves_t * tealeaves_new() ;
void tealeaves_free() ;
void tealeaves_steep_tea( tealeaves_t * t ) ;

#endif
