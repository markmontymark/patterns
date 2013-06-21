
#include "../../common/soup.h"
#include "boston_soup_factory.h"
#include "honolulu_soup_factory.h"

// Testing the abstract factory

soup_t * makeSoupOfTheDay(soup_factory_t * sf)
{ 
       //Calendar todayCalendar = Calendar.getInstance();
       //int dayOfWeek = todayCalendar.get(Calendar.DAY_OF_WEEK);
      /* 
       int dayOfWeek = Calendar.TUESDAY;
       
       if (dayOfWeek == Calendar.MONDAY) {
           return concreteSoupFactory.makeChickenSoup();
       } else if (dayOfWeek == Calendar.TUESDAY) {
           return concreteSoupFactory.makeClamChowder();
       } else if (dayOfWeek == Calendar.WEDNESDAY) {
           return concreteSoupFactory.makeFishChowder();
       } else if (dayOfWeek == Calendar.THURSDAY) {
           return concreteSoupFactory.makeMinnestrone();
       } else if (dayOfWeek == Calendar.TUESDAY) {
           return concreteSoupFactory.makePastaFazul();
       } else if (dayOfWeek == Calendar.WEDNESDAY) {
           return concreteSoupFactory.makeTofuSoup();
       } else {
           return concreteSoupFactory.makeVegetableSoup();
       }
	*/
	return sf->make_fishchowder();
}        

int main(int argc, char ** argv)
{
	soup_factory_t * sf = boston_soup_factory_new();
	soup_t * soupOfTheDay = makeSoupOfTheDay(sf);
	printf("The Soup of the day in %s is %s\n", sf->factoryLocation, soupOfTheDay->name);

	soup_factory_free(sf);
	soup_free( soupOfTheDay );

	sf = honolulu_soup_factory_new();
	soupOfTheDay = makeSoupOfTheDay(sf);
	printf("The Soup of the day in %s is %s\n", sf->factoryLocation, soupOfTheDay->name);

	soup_factory_free(sf);
	soup_free( soupOfTheDay );
}      
