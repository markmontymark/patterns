
//teabag - three of three classes the facade calls

#ifndef C_PATTERNS_FACADE_TEABAG_H_
#define C_PATTERNS_FACADE_TEABAG_H_

typedef struct teabag teabag_t;
struct teabag
{
	int isSteeped;
};

teabag_t * teabag_new() ;
void teabag_free( teabag_t * t) ;

#endif
