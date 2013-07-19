
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags - the abstract base class for the composite

#ifndef COMPOSITE_TEABAGS_H_
#define COMPOSITE_TEABAGS_H_

#include "list.h"

typedef struct TeaBags TeaBags_t;

struct TeaBags
{  
   List_T teaBagList; 
   TeaBags_t * parent;
   char * name;
	void ( * free )( TeaBags_t * this) ;
	int ( * countTeaBags )( TeaBags_t * this) ;
	int ( * add )(TeaBags_t * this, TeaBags_t * teaBagsToAdd) ;
	int ( * remove )(TeaBags_t * this, TeaBags_t * teaBagsToRemove) ;
	List_T ( * createListIterator )( TeaBags_t * this) ;
};

#endif 
