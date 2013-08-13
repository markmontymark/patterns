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
                           bostonSoupBuffet.getTodaysSoups()) , ("czxcvzxcv"));

       SoupBuffet honoluluSoupBuffet = createSoupBuffet(new HonoluluSoupBuffetBuilder());
       tap.test("Honolulu builder test ", ("At the " + 
                           honoluluSoupBuffet.getSoupBuffetName() + 
                           honoluluSoupBuffet.getTodaysSoups()) , ("czxcvzxcv"));
		tap.done();
   }
}

}      
