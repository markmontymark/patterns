

//TitleAndActor - A Helper Class

#ifndef INTERPRETER_TA_H_
#define INTERPRETER_TA_H_

typedef struct TitleAndActor TitleAndActor_t;
struct TitleAndActor
{
	char * title;
	char * actor;
};
#define TitleAndActor_s sizeof(TitleAndActor_t)

TitleAndActor_t * TitleAndActor_new( char * title, char * actor) ;
void TitleAndActor_free(  TitleAndActor_t * ta ) ;



typedef struct TitleAndActor_list TitleAndActor_list_t;
struct TitleAndActor_list
{
   TitleAndActor_t * this;
   TitleAndActor_list_t * next;
};
#define TitleAndActor_list_s sizeof(TitleAndActor_list_t)

TitleAndActor_list_t * TitleAndActor_list_new();
void TitleAndActor_list_add(TitleAndActor_list_t * l, TitleAndActor_t * d);
void TitleAndActor_list_free(TitleAndActor_list_t * l);

#endif
