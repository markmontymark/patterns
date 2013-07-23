

//TitleAndActor - A Helper Class

#ifndef INTERPRETER_TA_H_
#define INTERPRETER_TA_H_

typedef struct TitleAndActor TitleAndActor_t;
struct TitleAndActor
{
	char * title;
	char * actor;
};

TitleAndActor_t * TitleAndActor_new( char * title, char * actor) ;
void TitleAndActor_free(  TitleAndActor_t * ta ) ;

#endif
