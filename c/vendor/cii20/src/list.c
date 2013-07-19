static char rcsid[] = "$Id: list.c 6 2007-01-22 00:45:22Z drhanson $";
#include <stdarg.h>
#include <stddef.h>
#include "assert.h"
#include "mem.h"
#include "list.h"

#include "stdio.h"

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
T List_remove2(T list, void *x) {
	T *p = &list;
	T prevp;
	int i = 0;
	while (*p)
	{
		if( (*p)->first == x )
		{
			printf("found item to remove at %d iteration\n",i);
			if( i == 0 )
			{
					T retval = (*p)->rest;
					FREE(list);	
					return retval;
			}
			else
			{
				*(prevp->rest) = *((*p)->rest);
				FREE(*p);	
				return list;
			}
		}
		prevp = (*p);
		p = &(*p)->rest;
		i++;
	}
	return list;
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
// end mrk additions
