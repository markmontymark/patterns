

//  testing the Chain of Responsibility

#include "DvdCategory.h"
#include "DvdSubCategory.h"
#include "DvdSubSubCategory.h"

#include "stdio.h"

int main( int argc, char ** argv )
{
	DvdCategory_t * comedy = DvdCategory_new("Comedy");
	DvdSubCategory_t * comedyChildrens = DvdSubCategory_new(comedy, "Childrens");
	DvdSubSubCategory_t * comedyChildrensAquatic = DvdSubSubCategory_new(comedyChildrens, "Aquatic");

	DvdCategory_setTopCategoryTitle( comedy, "Ghost World");
	DvdSubSubCategory_setTopSubSubCategoryTitle( comedyChildrensAquatic, "Sponge Bob Squarepants");

	char * allCats;
	printf("Getting top comedy title:\n");
	printf("The top title for %s is %s\n\n" , 
		comedy->topTitle->getAllCategories( comedy, allCats ) , 
		comedy->topTitle->getTopTitle( comedy ) );
	free(allCats);

	printf("Getting top comedy/childrens title:\n");
	printf("The top title for %s is %s\n\n" , 
		comedyChildrens->topTitle->getAllCategories( comedyChildrens, allCats ) , 
		comedyChildrens->topTitle->getTopTitle( comedyChildrens));
	free(allCats);

	printf( "Getting top comedy/childrens/aquatic title:\n");
	printf("The top title for %s is %s\n" , 
		comedyChildrensAquatic->topTitle->getAllCategories(comedyChildrensAquatic, allCats) , 
		comedyChildrensAquatic->topTitle->getTopTitle( comedyChildrensAquatic ));
	free(allCats);

	DvdSubSubCategory_free( comedyChildrensAquatic );
	DvdSubCategory_free( comedyChildrens );
	DvdCategory_free( comedy );
}
