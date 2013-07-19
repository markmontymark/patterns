//teabag - the class which the adapter will make the adaptee adapt to

#ifndef C_PATTERNS_ADAPTER_TEABAG_H_
#define C_PATTERNS_ADAPTER_TEABAG_H_

typedef struct teabag teabag_t;
struct teabag
{
   int teaIsSteeped;
};

teabag_t * teabag_new() ;
void teabag_free(teabag_t * tb) ;
void teabag_steepTeaInCup(teabag_t * tb) ;

#endif
