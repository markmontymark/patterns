//Soup.java - A helper class

#ifndef C_PATTERNS_COMMON_SOUP
#define C_PATTERNS_COMMON_SOUP

#include "arraylist_string.h"

typedef struct soup soup_t;
struct soup 
{
   arraylist_string_t * ingredients;    
   char * (*to_string)(soup_t *);
   char * name;
};
#define soup_s sizeof(soup_t)

char * soup_to_string(soup_t * t);
soup_t * soup_new();
void soup_free(soup_t * soup);


#endif

