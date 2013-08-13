//TestSoupBuffetBuilder - Testing the builder

namespace Creational.Builder {

using tap;
using common;

class TestBuilder {

   public static SoupBuffet createSoupBuffet( 
		SoupBuffetBuilder sbb
	) { 
        sbb.buildSoupBuffet();
        
        sbb.setSoupBuffetName();
        
        sbb.buildChickenSoup();
        sbb.buildClamChowder();
        sbb.buildFishChowder();    
        sbb.buildMinnestrone();
        sbb.buildPastaFazul();
        sbb.buildTofuSoup();
        sbb.buildVegetableSoup();
        
        return sbb.getSoupBuffet();
   }     
    
   public static void Main() {
       
       SoupBuffet bostonSoupBuffet = createSoupBuffet(new BostonSoupBuffetBuilder());
		 Tapper tap = new Tapper();
       tap.test("Boston builder test ", ("At the " + 
                           bostonSoupBuffet.getSoupBuffetName() + 
                           bostonSoupBuffet.getTodaysSoups()) , ("At the Boston Soup Buffet Today's Soups!  ,  Chicken Soup: , ChickenSoup,  Clam Chowder: , QuahogChowder,  Fish Chowder: , ScrodFishChowder,  Minnestrone: , Minestrone,  Pasta Fazul: , Pasta Fazul,  Tofu Soup: , Tofu Soup,  Vegetable Soup: , Vegetable Soup"));

       SoupBuffet honoluluSoupBuffet = createSoupBuffet(new HonoluluSoupBuffetBuilder());
       tap.test("Honolulu builder test ", ("At the " + 
                           honoluluSoupBuffet.getSoupBuffetName() + 
                           honoluluSoupBuffet.getTodaysSoups()) , ("At the Honolulu Soup Buffet Today's Soups!  ,  Chicken Soup: , ChickenSoup,  Clam Chowder: , PacificClamChowder,  Fish Chowder: , OpakapakaFishChowder,  Minnestrone: , Minestrone,  Pasta Fazul: , Pasta Fazul,  Tofu Soup: , Tofu Soup,  Vegetable Soup: , Vegetable Soup"));
		tap.done();
   }
}

}      
