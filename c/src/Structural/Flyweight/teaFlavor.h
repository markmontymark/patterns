
#ifndef C_PATTERNS_teaFlavor_H_
#define C_PATTERNS_teaFlavor_H_

typedef struct teaFlavor teaFlavor_t;
struct teaFlavor
{
	char * teaFlavor;
};
#define teaFlavor_s sizeof(teaFlavor_t)

teaFlavor_t * teaFlavor_new() ;
void teaFlavor_free() ;

#endif
