#ifndef _ARRAYLIST_string_H
#define _ARRAYLIST_string_H

#include <stdio.h>

typedef struct arraylist_string arraylist_string_t;
struct arraylist_string
{
	int size;
	char** data; // tricky substitution -- data is always a ptr to the type
};

//ctor w/ malloc
arraylist_string_t * arraylist_string_new();

//public api
int 		arraylist_string_size(		arraylist_string_t * list);
char* 	arraylist_string_get(		arraylist_string_t * list, int index);
char* 	arraylist_string_to_string(arraylist_string_t * list);
void 		arraylist_string_add(		arraylist_string_t * list, char* value);
int  		arraylist_string_indexof(	arraylist_string_t * list, char* value);
void		arraylist_string_free(		arraylist_string_t * list);

#endif
