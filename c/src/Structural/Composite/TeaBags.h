
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags - the abstract base class for the composite

#ifndef COMPOSITE_TEABAGS_H_
#define COMPOSITE_TEABAGS_H_

typedef struct TeaBags_list TeaBags_list_t;
typedef struct TeaBags TeaBags_t;


struct TeaBags_list
{
   TeaBags_t * this;
   TeaBags_list_t * next;
};
#define TeaBags_list_s sizeof(TeaBags_list_t)

TeaBags_list_t * TeaBags_list_new();
void TeaBags_list_add(TeaBags_list_t * l, TeaBags_t * d);
void TeaBags_list_free(TeaBags_list_t * l);

struct TeaBags
{  
   TeaBags_list_t * teaBagList; 
   TeaBags_t * parent;
   char * name;
	void ( * free )( TeaBags_t * this) ;
	int ( * countTeaBags )( TeaBags_t * this) ;
	int ( * add )(TeaBags_t * this, TeaBags_t * teaBagsToAdd) ;
	int ( * remove )(TeaBags_t * this, TeaBags_t * teaBagsToRemove) ;
	TeaBags_list_t * ( * createListIterator )( TeaBags_t * this) ;
};
#define TeaBags_s sizeof(TeaBags_t)



   
#endif 
