//looseleaftea - the adaptee

#ifndef C_PATTERNS_ADAPTER_LLT_H_
#define C_PATTERNS_ADAPTER_LLT_H_

typedef struct looseleaftea looseleaftea_t;
struct looseleaftea
{
	int teaIsSteeped;
};
#define looseleaftea_s sizeof(looseleaftea_t)

looseleaftea_t * looseleaftea_new() ;
void looseleaftea_free( looseleaftea_t * ) ;
void looseleaftea_steep_tea( looseleaftea_t * t) ;

#endif
