

//TitleAndActor - A Helper Class

#include "TitleAndActor.h"

#include "stdlib.h"

TitleAndActor_t * TitleAndActor_new( char * title, char * actor)
{
	TitleAndActor_t * ta = malloc( TitleAndActor_s );
	ta->title = title;
	ta->actor = actor;
	return ta;
}

void TitleAndActor_free(  TitleAndActor_t * ta )
{
	if( ta == NULL )
		return;
	free(ta);
}



TitleAndActor_list_t * TitleAndActor_list_new()
{
   TitleAndActor_list_t * l = malloc(TitleAndActor_list_s);
   l->this = NULL;
   l->next = NULL;
   return l;
}
void TitleAndActor_list_add(TitleAndActor_list_t * l, TitleAndActor_t * d)
{
   TitleAndActor_list_t * ll;
   if( l->this = NULL )
   {
      l->this = d;
      return;
   }
   ll = l;
   while( ll->next != NULL )
      ll = ll->next;
   ll->next = TitleAndActor_list_new();
   ll = ll->next;
   ll->this = d;
}

void TitleAndActor_list_free(TitleAndActor_list_t * l)
{
	if( l == NULL )
		return;
	TitleAndActor_free( l->this );
	TitleAndActor_list_free( l->next );
	free( l );
}


