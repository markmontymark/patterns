
//Memento (aka Token) Overview
//One object stores another objects state.
//DvdDetails- the Originator
//(the class to be backed up)

#ifndef MEMENTO_DVDDETAILS_H_
#define MEMENTO_DVDDETAILS_H_

#include "../../common/arraylist_string.h"

typedef struct DvdDetails DvdDetails_t;
struct DvdDetails
{  
   char encodingRegion;
   char * titleName;  
   arraylist_string_t * stars;
};
#define DvdDetails_s sizeof(DvdDetails_t)

DvdDetails_t * DvdDetails_new( 
	char * titleName, 
	char encodingRegion
);

DvdDetails_t * DvdDetails_new_w_stars( 
	char * titleName, 
	arraylist_string_t * stars, 
	char encodingRegion
);

void DvdDetails_free( DvdDetails_t * d) ;
void DvdDetails_addStar(DvdDetails_t *d, char * starIn)  ;
char * DvdDetails_to_string( DvdDetails_t * d)  ;
void DvdDetails_reset(DvdDetails_t * d, DvdDetails_t * memento)  ;
DvdDetails_t * DvdDetails_createMemento( DvdDetails_t * d)  ;

#endif
