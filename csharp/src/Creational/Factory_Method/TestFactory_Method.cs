//TestSoupFactoryMethod.java - testing the factory method

namespace Creational.Factory_Method {

using tap;
using common;

class TestFactoryMethod {         

   public static void Main() {
		Tapper tap = new Tapper();
       
       SoupFactoryMethod sfm = new SoupFactoryMethod();
       SoupBuffet soupBuffet = sfm.makeSoupBuffet();
       soupBuffet.setSoupBuffetName( sfm.makeBuffetName());
       soupBuffet.setChickenSoup( sfm.makeChickenSoup());
       soupBuffet.setClamChowder( sfm.makeClamChowder()); 
       soupBuffet.setFishChowder( sfm.makeFishChowder());
       soupBuffet.setMinnestrone( sfm.makeMinnestrone());
       soupBuffet.setPastaFazul( sfm.makePastaFazul()); 
       soupBuffet.setTofuSoup( sfm.makeTofuSoup());
       soupBuffet.setVegetableSoup( sfm.makeVegetableSoup()); 
       tap.test("Base Soup Factory Method", 
			 ("At the  " + soupBuffet.getSoupBuffetName() + soupBuffet.getTodaysSoups()) , ("At the  Soup Buffet Today's Soups!  ,  Chicken Soup: , ChickenSoup,  Clam Chowder: , ClamChowder,  Fish Chowder: , FishChowder,  Minnestrone: , Minestrone,  Pasta Fazul: , Pasta Fazul,  Tofu Soup: , Tofu Soup,  Vegetable Soup: , Vegetable Soup")
		);
       
       
       SoupFactoryMethod bsfm = new BostonSoupFactoryMethodSubclass();
       SoupBuffet bsb = bsfm.makeSoupBuffet();
       bsb.setSoupBuffetName( bsfm.makeBuffetName());
       bsb.setChickenSoup( bsfm.makeChickenSoup());
       bsb.setClamChowder( bsfm.makeClamChowder());
       bsb.setFishChowder( bsfm.makeFishChowder());
       bsb.setMinnestrone( bsfm.makeMinnestrone());
       bsb.setPastaFazul( bsfm.makePastaFazul());
       bsb.setTofuSoup( bsfm.makeTofuSoup());
       bsb.setVegetableSoup( bsfm.makeVegetableSoup()); 
       tap.test("Boston Soup Factory Method",
			("At the  " + bsb.getSoupBuffetName() + bsb.getTodaysSoups()) , ("At the  Boston Soup Buffet Today's Soups!  ,  Chicken Soup: , ChickenSoup,  Clam Chowder: , QuahogChowder,  Fish Chowder: , ScrodFishChowder,  Minnestrone: , Minestrone,  Pasta Fazul: , Pasta Fazul,  Tofu Soup: , Tofu Soup,  Vegetable Soup: , Vegetable Soup")
		);
       
       SoupFactoryMethod hsfm = new HonoluluSoupFactoryMethodSubclass();
       SoupBuffet hsb = hsfm.makeSoupBuffet();
       hsb.setSoupBuffetName( hsfm.makeBuffetName());
       hsb.setChickenSoup( hsfm.makeChickenSoup());
       hsb.setClamChowder( hsfm.makeClamChowder()); 
       hsb.setFishChowder( hsfm.makeFishChowder());
       hsb.setMinnestrone( hsfm.makeMinnestrone());
       hsb.setPastaFazul( hsfm.makePastaFazul()); 
       hsb.setTofuSoup( hsfm.makeTofuSoup());
       hsb.setVegetableSoup( hsfm.makeVegetableSoup()); 
       tap.test( "Honolulu Factory Method test ",
				("At the  " + hsb.getSoupBuffetName() + hsb.getTodaysSoups()) , ("At the  Honolulu Soup Buffet Today's Soups!  ,  Chicken Soup: , ChickenSoup,  Clam Chowder: , PacificClamChowder,  Fish Chowder: , OpakapakaFishChowder,  Minnestrone: , Minestrone,  Pasta Fazul: , Pasta Fazul,  Tofu Soup: , Tofu Soup,  Vegetable Soup: , Vegetable Soup")
		);


		tap.done();
     }
}

}      
