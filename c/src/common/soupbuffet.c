
#include "arraylist_string.h"
#include "soup.h"
#include "soupbuffet.h"

#include "stdlib.h"

soupbuffet_t * soupbuffet_new()
{
	soupbuffet_t * sb = malloc( soupbuffet_s );
	return sb;
}

void soupbuffet_free(soupbuffet_t * sb)
{
	if( sb == NULL )
		return;

   soup_free(sb->chickenSoup);
   soup_free(sb->clamChowder);
   soup_free(sb->fishChowder);
   soup_free(sb->minnestrone);
   soup_free(sb->pastaFazul);
   soup_free(sb->tofuSoup);
   soup_free(sb->vegetableSoup);

	free(sb);
}


char * get_soupbuffet_name(soupbuffet_t * sb) 
{
	return sb->name;
}

void set_soupbuffet_name(soupbuffet_t * sb, char * name) 
{
	sb->name  = name;
}
   
void setChickenSoup(soupbuffet_t * sb, soup_t * chickenSoupIn) 
{
       sb->chickenSoup = chickenSoupIn;
}
void setClamChowder(soupbuffet_t * sb, soup_t * clamChowderIn) 
{
       sb->clamChowder = clamChowderIn;
}
void setFishChowder(soupbuffet_t * sb, soup_t * fishChowderIn) 
{
      sb->fishChowder = fishChowderIn;
}
void setMinnestrone(soupbuffet_t * sb, soup_t * minnestroneIn) 
{
      sb->minnestrone = minnestroneIn;
}
void setPastaFazul(soupbuffet_t * sb, soup_t * pastaFazulIn) 
{
       sb->pastaFazul = pastaFazulIn;
}

void setTofuSoup(soupbuffet_t * sb, soup_t * tofuSoupIn) 
{
       sb->tofuSoup = tofuSoupIn;
}

void setVegetableSoup(soupbuffet_t * sb, soup_t  * vegetableSoupIn) 
{
       sb->vegetableSoup = vegetableSoupIn;
}

char * getTodaysSoups (soupbuffet_t * sb)
{   
	arraylist_string_t * buffer = arraylist_string_new();
	arraylist_string_add( buffer," Today's Soups!  ");
	arraylist_string_add( buffer," Chicken Soup: ");        
	arraylist_string_add( buffer,sb->chickenSoup->name); 
	arraylist_string_add( buffer," Clam Chowder: ");        
	arraylist_string_add( buffer,sb->clamChowder->name); 
	arraylist_string_add( buffer," Fish Chowder: ");        
	arraylist_string_add( buffer,sb->fishChowder->name); 
	arraylist_string_add( buffer," Minnestrone: ");        
	arraylist_string_add( buffer,sb->minnestrone->name);
	arraylist_string_add( buffer," Pasta Fazul: ");        
	arraylist_string_add( buffer,sb->pastaFazul->name);
	arraylist_string_add( buffer," Tofu Soup: ");        
	arraylist_string_add( buffer,sb->tofuSoup->name);
	arraylist_string_add( buffer," Vegetable Soup: ");        
	arraylist_string_add( buffer,sb->vegetableSoup->name);
	char * retval = arraylist_string_to_string( buffer );
	arraylist_string_free(buffer);
	return retval;
}        
