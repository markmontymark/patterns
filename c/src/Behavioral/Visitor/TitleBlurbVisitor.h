//TitleBlurbVisitor - the abstract Visitor

#ifndef VISITOR_TITLEBLURBVISITOR_H_
#define VISITOR_TITLEBLURBVISITOR_H_

typedef struct TitleBlurbVisitor TitleBlurbVisitor_t;
struct TitleBlurbVisitor
{
	void ( * visit )( TitleBlurbVisitor_t * , void * info );
   char  * titleBlurb;
};
#define TitleBlurbVisitor_s sizeof(TitleBlurbVisitor_t)

TitleBlurbVisitor_t * TitleBlurbVisitor_new( void (* visit)( TitleBlurbVisitor_t *, void * info) ) ;


#endif
