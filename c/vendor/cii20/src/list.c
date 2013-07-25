static char rcsid[] = "$Id: list.c 6 2007-01-22 00:45:22Z drhanson $";
#include <stdarg.h>
#include <stddef.h>
#include "assert.h"
#include "mem.h"
#include "list.h"

#include "stdio.h"
#include "stdlib.h"
#include "string.h"

#define T List_T
T List_push(T list, void *x) {
	T p;
	NEW(p);
	p->first = x;
	p->rest  = list;
	return p;
}


T List_list(void *x, ...) {
	va_list ap;
	T list, *p = &list;
	va_start(ap, x);
	for ( ; x; x = va_arg(ap, void *)) {
		NEW(*p);
		(*p)->first = x;
		p = &(*p)->rest;
	}
	*p = NULL;
	va_end(ap);
	return list;
}
T List_append(T list, T tail) {
	T *p = &list;
	while (*p)
		p = &(*p)->rest;
	*p = tail;
	return list;
}
T List_copy(T list) {
	T head, *p = &head;
	for ( ; list; list = list->rest) {
		NEW(*p);
		(*p)->first = list->first;
		p = &(*p)->rest;
	}
	*p = NULL;
	return head;
}
T List_pop(T list, void **x) {
	if (list) {
		T head = list->rest;
		if (x)
			*x = list->first;
		FREE(list);
		return head;
	} else
		return list;
}
T List_reverse(T list) {
	T head = NULL, next;
	for ( ; list; list = next) {
		next = list->rest;
		list->rest = head;
		head = list;
	}
	return head;
}
int List_length(T list) {
	int n;
	for (n = 0; list; list = list->rest)
		n++;
	return n;
}
void List_free(T *list) {
	T next;
	assert(list);
	for ( ; *list; *list = next) {
		next = (*list)->rest;
		FREE(*list);
	}
}
void List_map(T list,
	void apply(void **x, void *cl), void *cl) {
	assert(apply);
	for ( ; list; list = list->rest)
		apply(&list->first, cl);
}
void **List_toArray(T list, void *end) {
	int i, n = List_length(list);
	void **array = ALLOC((n + 1)*sizeof (*array));
	for (i = 0; i < n; i++) {
		array[i] = list->first;
		list = list->rest;
	}
	array[i] = end;
	return array;
}

// start mrk additions
void List_join(T list,
	void apply(void **x, void *cl, int is_last), void *cl) {
	assert(apply);
	for ( ; list; list = list->rest)
		apply(&list->first, cl, (list->rest == NULL || list->rest->first == NULL));
}
T List_remove(T list, void *x) {
	T p = list;
	T prevp;
	int i = 0;
	while(p)
	{
		if( p->first == x )
		{
			if( i == 0 )
			{
					T retval = p->rest;
					FREE(list);	
					return retval;
			}
			else
			{
				prevp->rest = p->rest;
				FREE(p);	
				return list;
			}
		}
		prevp = p;
		p = p->rest;
		i++;
	}
	return list;
}
T List_new()
{
	T list;
	NEW(list);
	return list;
}
int List_first(T list,
	int apply(void **x, void *cl), void *cl) {
	assert(apply);
	int retval;
	for ( ; list; list = list->rest)
		if( (retval = apply(&list->first, cl)) )
			return retval;
	return 0;
}

T List_add(T list, void *x) 
{
	if(list == NULL )
		return List_list(x);
	return List_append( list, List_list(x));
}

static char * List_csv_join( char * retval, char * item, int add_delim, struct List_csv_ctx * ctx)
{
   int item_len = strlen(item);
   int new_len = ctx->retval_len + (add_delim ? ctx->delim_len : 0) + item_len;
	char *tmp = realloc(retval, (new_len + 1) * sizeof(char) ); // + 1 because strncat always adds a '\0' at end
   if(add_delim)
	{
		strncpy( (tmp + ctx->retval_len           ), item, item_len );
      strncat( (tmp + ctx->retval_len + item_len), ctx->delim, ctx->delim_len);
	}
   else
	{
		strncat( (tmp + ctx->retval_len), item, item_len);
	}
	
   ctx->retval_len = new_len ;
	return tmp;
}

char * List_csv(
	T list,
	char * get_item_str(void * x)
) 
{
	assert(get_item_str);
	T next = list;
	char * item_str;	
	char * retval = calloc(1024,1);
	memset(retval, 0, sizeof(*(retval)));
	
	//NEW0(retval);
	struct List_csv_ctx * ctx = malloc( sizeof(struct List_csv_ctx) );
	ctx->delim_len = 2;
	ctx->delim = ", ";
	ctx->retval_len = 0;

	for ( ; next ; next = next->rest)
	{
		item_str = get_item_str( next->first );
		retval = List_csv_join( retval, item_str, (next->rest != NULL), ctx);
		//printf("\tList_csv retval so far%s\n",retval);
	}
	free(ctx);
	return retval;
}

char * List_csv_str(
	T list
) 
{
	T next = list;
	char * retval = calloc(1024,1);
	//memset(retval, 0, sizeof(*(retval)));
	//NEW0(retval);
	struct List_csv_ctx * ctx = malloc(sizeof(struct List_csv_ctx));
	ctx->delim_len 	= 2;	
	ctx->delim		= ", "; 	
	ctx->retval_len	= 0; 
	for ( ; next ; next = next->rest)
	{
		retval = List_csv_join( retval,
			(char*)(next->first), 
			(next->rest != NULL) , 
		ctx);
		//printf("\tList_csv_str retval so far %s\n",retval);
	}
	//printf("final retval %s\n",retval);
	free(ctx);
	return retval;
}

// end mrk additions
