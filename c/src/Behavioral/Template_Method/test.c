

// - testing the Template

#include "TitleInfo.h"
#include "DvdTitleInfo.h"
#include "BookTitleInfo.h"
#include "GameTitleInfo.h"

#include "stdlib.h"
#include "stdio.h"

    
int main( int argc, char ** argv ) 
{
	TitleInfo_t * bladeRunner = DvdTitleInfo_new("Blade Runner", "Harrison Ford", '1'); 
	TitleInfo_t * electricSheep = BookTitleInfo_new("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
	TitleInfo_t * sheepRaider = GameTitleInfo_new("Sheep Raider");
      
	char * t;

	t = TitleInfo_ProcessTitleInfo(bladeRunner); 
	printf("Testing bladeRunner   %s\n" , t);
	free(t);

	t = TitleInfo_ProcessTitleInfo(electricSheep);
	printf("Testing electricSheep %s\n" , t);
	free(t);

	t = TitleInfo_ProcessTitleInfo(sheepRaider);
	printf("Testing sheepRaider   %s\n" , t);
	free(t);

	DvdTitleInfo_free( bladeRunner );
	BookTitleInfo_free( electricSheep );
	GameTitleInfo_free( sheepRaider );

	return 0;
}
