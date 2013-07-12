

// testing the Visitor

#include "DvdInfo.h"
#include "BookInfo.h"
#include "GameInfo.h"

#include "TitleBlurbVisitor.h"
#include "TitleShortBlurbVisitor.h"
#include "TitleLongBlurbVisitor.h"

#include "stdlib.h"
#include "stdio.h"


int main(int argc, char ** argv) 
{
	TitleInfo_t * bladeRunner = DvdInfo_new("Blade Runner", "Harrison Ford", '1');
	TitleInfo_t * electricSheep = BookInfo_new("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
	TitleInfo_t * sheepRaider = GameInfo_new("Sheep Raider");


	TitleBlurbVisitor_t * tlbv = TitleLongBlurbVisitor_new();

	printf("Long Blurbs:\n");     
	bladeRunner->accept(bladeRunner, tlbv);
	printf("Testing bladeRunner  %s\n" , tlbv->titleBlurb);
	electricSheep->accept(electricSheep, tlbv);
	printf("Testing electricSheep %s\n" , tlbv->titleBlurb);
	sheepRaider->accept(sheepRaider, tlbv);
	printf("Testing sheepRaider   %s\n" , tlbv->titleBlurb);


	TitleBlurbVisitor_t * tsbv = TitleShortBlurbVisitor_new();

	printf("Short Blurbs:\n");     
	bladeRunner->accept(bladeRunner, tsbv);
	printf("Testing bladeRunner   %s\n" , tsbv->titleBlurb);
	electricSheep->accept(electricSheep, tsbv);
	printf("Testing electricSheep %s\n" , tsbv->titleBlurb);
	sheepRaider->accept(sheepRaider, tsbv);
	printf("Testing sheepRaider   %s\n" , tsbv->titleBlurb);


	DvdInfo_free(bladeRunner);
	BookInfo_free(electricSheep);
	GameInfo_free(sheepRaider);

	TitleBlurbVisitor_free(tlbv);
	TitleBlurbVisitor_free(tsbv);
	
}
