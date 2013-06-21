
#include "stdio.h"
#include "singlespoon.h"

int main ( int argc, char ** argv )
{
	spoon_t * spoonForFirstPerson;
	spoon_t * spoonForSecondPerson;

	printf("First person getting the spoon\n");
	spoonForFirstPerson = spoon_get_the_spoon();
	if (spoonForFirstPerson != NULL)
		printf("%p\n",spoonForFirstPerson);
	else
		printf( "No spoon was available\n");

	printf("\n");

	printf("Second person getting a spoon\n");
	spoonForSecondPerson = spoon_get_the_spoon();
	if (spoonForSecondPerson != NULL)
		printf("%p\n",spoonForSecondPerson);
	else
		printf("No spoon was available\n");

	printf("\n");

	printf("First person returning the spoon\n");
	spoon_return_the_spoon(spoonForFirstPerson);       
	spoonForFirstPerson = NULL;
	printf("The spoon was returned\n");

	printf("\n");

	printf("Second person getting a spoon\n");
	spoonForSecondPerson = spoon_get_the_spoon();
	if (spoonForSecondPerson != NULL)
		printf("%p\n",spoonForSecondPerson);
	else
		printf("No spoon was available\n");
}
