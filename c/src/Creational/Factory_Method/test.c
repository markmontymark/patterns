#include "soup_factorymethod.h"
#include "boston_factorymethod.h"
#include "honolulu_factorymethod.h"

#include "stdio.h"
#include "stdlib.h"


int main( int argc, char ** argv )
{

	char * todaysSoups;
	soup_factorymethod_t * sfm = soup_factorymethod_new(NULL);
	soupbuffet_t * sb = sfm->make_soupbuffet();

	set_soupbuffet_name( sb, sfm->make_soupbuffet_name());
	setChickenSoup( sb, sfm->make_chickensoup());
	setClamChowder( sb, sfm->make_clamchowder()); 
	setFishChowder( sb, sfm->make_fishchowder());
	setMinnestrone( sb, sfm->make_minnestrone());
	setPastaFazul( sb, sfm->make_pastafazul()); 
	setTofuSoup( sb, sfm->make_tofusoup());
	setVegetableSoup( sb, sfm->make_vegetablesoup()); 

	todaysSoups = getTodaysSoups(sb);
	printf("At the %s, today's soups are: %s\n", sb->name, todaysSoups);
	soup_factorymethod_free(sfm);
	soupbuffet_free(sb);
	free(todaysSoups);

	sfm = boston_factorymethod_new();
	sb  = sfm->make_soupbuffet();
	set_soupbuffet_name( sb, sfm->make_soupbuffet_name());
	setChickenSoup( sb, sfm->make_chickensoup());
	setClamChowder( sb, sfm->make_clamchowder());
	setFishChowder( sb, sfm->make_fishchowder());
	setMinnestrone( sb, sfm->make_minnestrone());
	setPastaFazul( sb, sfm->make_pastafazul());
	setTofuSoup( sb, sfm->make_tofusoup());
	setVegetableSoup( sb, sfm->make_vegetablesoup()); 

	todaysSoups = getTodaysSoups(sb);
	printf("At the %s, today's soups are: %s\n", sb->name, getTodaysSoups(sb));
	soup_factorymethod_free(sfm);
	soupbuffet_free(sb);
	free(todaysSoups);

	sfm = honolulu_factorymethod_new();
	sb = sfm->make_soupbuffet();
	set_soupbuffet_name( sb, sfm->make_soupbuffet_name());
	setChickenSoup( sb, sfm->make_chickensoup());
	setClamChowder( sb, sfm->make_clamchowder()); 
	setFishChowder( sb, sfm->make_fishchowder());
	setMinnestrone( sb, sfm->make_minnestrone());
	setPastaFazul( sb, sfm->make_pastafazul()); 
	setTofuSoup( sb, sfm->make_tofusoup());
	setVegetableSoup( sb, sfm->make_vegetablesoup()); 

	todaysSoups = getTodaysSoups(sb);
	printf("At the %s, today's soups are: %s\n", sb->name, getTodaysSoups(sb));
	soup_factorymethod_free(sfm);
	soupbuffet_free(sb);
	free(todaysSoups);
}
