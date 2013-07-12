//TitleBlurbVisitor - the abstract Visitor

#ifndef VISITOR_TITLEBLURBVISITOR_H_
#define VISITOR_TITLEBLURBVISITOR_H_

typedef struct TitleBlurbVisitor TitleBlurbVisitor_t;

#include "TitleInfo.h"

struct TitleBlurbVisitor
{
	int do_free;
	void ( * visit )( TitleBlurbVisitor_t * , TitleInfo_t * info );
   char  * titleBlurb;
};
#define TitleBlurbVisitor_s sizeof(TitleBlurbVisitor_t)

TitleBlurbVisitor_t * TitleBlurbVisitor_new( void (* visit)( TitleBlurbVisitor_t *, TitleInfo_t * info) ) ;
void TitleBlurbVisitor_free( TitleBlurbVisitor_t *) ;


#endif
