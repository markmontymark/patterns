

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
	DvdInfo_t * bladeRunner = DvdInfo_new("Blade Runner", "Harrison Ford", '1');
	BookInfo_t * electricSheep = BookInfo_new("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
	GameInfo_t * sheepRaider = GameInfo_new("Sheep Raider");


	TitleBlurbVisitor_t * tlbv = TitleLongBlurbVisitor_new();

	printf("Long Blurbs:\n");     
	bladeRunner->ati->accept(bladeRunner, tlbv);
	printf("Testing bladeRunner  %s\n" , tlbv->titleBlurb);
	electricSheep->ati->accept(electricSheep, tlbv);
	printf("Testing electricSheep %s\n" , tlbv->titleBlurb);
	sheepRaider->ati->accept(sheepRaider, tlbv);
	printf("Testing sheepRaider   %s\n" , tlbv->titleBlurb);


	TitleBlurbVisitor_t * tsbv = TitleShortBlurbVisitor_new();

	printf("Short Blurbs:\n");     
	bladeRunner->ati->accept(bladeRunner, tsbv);
	printf("Testing bladeRunner   %s\n" , tsbv->titleBlurb);
	electricSheep->ati->accept(electricSheep, tsbv);
	printf("Testing electricSheep %s\n" , tsbv->titleBlurb);
	sheepRaider->ati->accept(sheepRaider, tsbv);
	printf("Testing sheepRaider   %s\n" , tsbv->titleBlurb);


	DvdInfo_free(bladeRunner);
	BookInfo_free(electricSheep);
	GameInfo_free(sheepRaider);

	TitleBlurbVisitor_free(tlbv);
	TitleBlurbVisitor_free(tsbv);
	
}
