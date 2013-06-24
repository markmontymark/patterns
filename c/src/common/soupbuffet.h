
#ifndef C_PATTERNS_BUILDER_SOUPBUFFET_H_
#define C_PATTERNS_BUILDER_SOUPBUFFET_H_


#include "soup.h"

//SoupBuffet - A helper class

typedef struct soupbuffet soupbuffet_t;
struct soupbuffet 
{
   soup_t * chickenSoup;
   soup_t * clamChowder;
   soup_t * fishChowder;
   soup_t * minnestrone;
   soup_t * pastaFazul;
   soup_t * tofuSoup;
   soup_t * vegetableSoup;
	char * name;
};
#define soupbuffet_s sizeof(soupbuffet_t)


soupbuffet_t * soupbuffet_new();
void soupbuffet_free(soupbuffet_t * sb);

char * get_soupbuffet_name(soupbuffet_t * sb) ;
void set_soupbuffet_name(soupbuffet_t * sb, char * name) ;
 
void setChickenSoup(soupbuffet_t * sb, soup_t * chickenSoupIn) ;
void setClamChowder(soupbuffet_t * sb, soup_t * clamChowderIn) ;
void setFishChowder(soupbuffet_t * sb, soup_t * fishChowderIn) ;
void setMinnestrone(soupbuffet_t * sb, soup_t * minnestroneIn) ;
void setPastaFazul(soupbuffet_t * sb, soup_t * pastaFazulIn) ;
void setTofuSoup(soupbuffet_t * sb, soup_t * tofuSoupIn) ;
void setVegetableSoup(soupbuffet_t * sb, soup_t  * vegetableSoupIn) ;

char * getTodaysSoups (soupbuffet_t * sb) ;
#endif
