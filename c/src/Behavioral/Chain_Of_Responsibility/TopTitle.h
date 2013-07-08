
//TopTitle - the Interface to be implemented by all Classes in the Chain

#ifndef TOPTITLE_H_
#define TOPTITLE_H_

typedef struct TopTitle TopTitle_t;
struct TopTitle
{
   char * ( * getTopTitle) (void *);
   char * ( * getAllCategories) (void *, char *);
};
#define TopTitle_s sizeof(TopTitle_t)

TopTitle_t * TopTitle_new( 
	char * ( *getTopTitle)(void *),
	char * ( *getAllCategories)(void *, char *)
) ;

void TopTitle_free( TopTitle_t * );

#endif
