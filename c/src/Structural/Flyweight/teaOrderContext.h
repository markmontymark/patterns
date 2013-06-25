
#ifndef C_PATTERNS_teaOrderContext_H_
#define C_PATTERNS_teaOrderContext_H_

typedef struct teaOrderContext teaOrderContext_t;
struct teaOrderContext
{
	int tableNumber;
};
#define teaOrderContext_s sizeof(teaOrderContext_t)

teaOrderContext_t * teaOrderContext_new( int ) ;
void teaOrderContext_free(teaOrderContext_t * ) ;
int teaOrderContext_gettable( teaOrderContext_t * obj ) ; 

#endif
