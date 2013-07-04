

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

	TitleBlurbVisitor_t * titleLongBlurbVisitor = TitleLongBlurbVisitor_new();

	printf("Long Blurbs:\n");     
	bladeRunner->ati->accept(bladeRunner, titleLongBlurbVisitor);
	printf("Testing bladeRunner  %s\n" , titleLongBlurbVisitor->titleBlurb);
/*
	electricSheep->ati->accept(electricSheep, titleLongBlurbVisitor);
	printf("Testing electricSheep %s\n" , titleLongBlurbVisitor->titleBlurb);
	sheepRaider->ati->accept(sheepRaider, titleLongBlurbVisitor);
	printf("Testing sheepRaider   %s\n" , titleLongBlurbVisitor->titleBlurb);

	TitleBlurbVisitor_t * titleShortBlurbVisitor = TitleShortBlurbVisitor_new();

	printf("Short Blurbs:\n");     
	bladeRunner->ati->accept(bladeRunner, titleShortBlurbVisitor);
	printf("Testing bladeRunner   %s\n" , titleShortBlurbVisitor->titleBlurb);
	electricSheep->ati->accept(electricSheep, titleShortBlurbVisitor);
	printf("Testing electricSheep %s\n" , titleShortBlurbVisitor->titleBlurb);
	sheepRaider->ati->accept(sheepRaider, titleShortBlurbVisitor);
	printf("Testing sheepRaider   %s\n" , titleShortBlurbVisitor->titleBlurb);
*/
}
