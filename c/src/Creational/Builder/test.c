

//Testing the builder

#include "soupbuffet.h"
#include "soupbuffet_builder.h"
#include "boston_soupbuffet_builder.h"
#include "honolulu_soupbuffet_builder.h"


soupbuffet_t * createSoupBuffet( soupbuffet_builder_t * builder ) 
{ 
	builder->build_soupbuffet(builder );
	builder->set_soupbuffet_name(builder );
	builder->build_chickensoup(builder );
	builder->build_clamchowder(builder );
	builder->build_fishchowder(builder );    
	builder->build_minnestrone(builder );
	builder->build_pastafazul(builder );
	builder->build_tofusoup( builder );
	builder->build_vegetablesoup(builder );
	return soupbuffet_builder_get_soupbuffet( builder );
}     
    
int main( int argc, char ** argv )
{
	soupbuffet_t * sb;
	soupbuffet_builder_t * bsbb = boston_soupbuffet_builder_new();
	soupbuffet_builder_t * hsbb = honolulu_soupbuffet_builder_new();
	char * todaysSoups;

	sb = createSoupBuffet(bsbb);
	todaysSoups = getTodaysSoups( sb);

	printf("At the %s, today's soups are %s\n", sb->name, todaysSoups);
	free(todaysSoups);

	//soupbuffet_free(sb);
	soupbuffet_builder_free(bsbb);



	sb = createSoupBuffet(hsbb);
	todaysSoups = getTodaysSoups( sb);

	printf("At the %s, today's soups are %s\n", sb->name, todaysSoups);
	free(todaysSoups);

	//soupbuffet_free(sb);
	soupbuffet_builder_free(hsbb);
}      
