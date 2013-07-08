

// testing the iterator

#include "DvdList.h"
#include "Iterator.h"

#include "stdio.h"

    
int main( int argc, char ** argv ) 
{
	DvdList_t * fiveShakespeareMovies = DvdList_new();
	DvdList_append( fiveShakespeareMovies, "10 Things I Hate About You");
	DvdList_append( fiveShakespeareMovies, "Shakespeare In Love");
	DvdList_append( fiveShakespeareMovies, "O (2001)");
	DvdList_append( fiveShakespeareMovies, "American Pie 2");
	DvdList_append( fiveShakespeareMovies, "Scotland, PA.");
	DvdList_append( fiveShakespeareMovies, "Hamlet (2000)");

	Iterator_t * iter = DvdList_createIterator( fiveShakespeareMovies );
	while (! iter->isDone(iter)) 
	{
		printf("%s\n", (char *)iter->currentItem(iter));
		iter->next(iter);  
	}

	DvdList_delete( fiveShakespeareMovies, "American Pie 2");

	printf("\n");   

	iter->first(iter);
	while (!iter->isDone(iter))
	{
		printf( "%s\n",  (char *)iter->currentItem(iter));
		iter->next(iter);  
	}       

	Iterator_free( iter );
	DvdList_free( fiveShakespeareMovies );
}

