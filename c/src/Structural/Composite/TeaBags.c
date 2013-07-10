
#include "TeaBags.h"

#include "stdlib.h"

TeaBags_list_t * TeaBags_list_new()
{
   TeaBags_list_t * l = malloc(TeaBags_list_s);
   l->this = NULL;
   l->next = NULL;
   return l;
}
void TeaBags_list_add(TeaBags_list_t * l, TeaBags_t * d)
{
   TeaBags_list_t * ll;
   if( l->this = NULL )
   {
      l->this = d;
      return;
   }
   ll = l;
   while( ll->next != NULL )
      ll = ll->next;
   ll->next = TeaBags_list_new();
   ll = ll->next;
   ll->this = d;
}

void TeaBags_list_free(TeaBags_list_t * l)
{
   if( l == NULL )
      return;
   TeaBags_list_free( l->next );
   free( l );
}

