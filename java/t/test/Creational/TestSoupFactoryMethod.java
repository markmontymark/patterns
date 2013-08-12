//TestSoupFactoryMethod.java - testing the factory method

package test.Creational;

import tap.*;
import Creational.Factory_Method.*;



class TestSoupFactoryMethod {         

   public static void main(String[] args) {
		Tapper tap = new Tapper();
       
       SoupFactoryMethod sfm = new SoupFactoryMethod();
       final SoupBuffet soupBuffet = sfm.makeSoupBuffet();
       soupBuffet.setSoupBuffetName( sfm.makeBuffetName());
       soupBuffet.setChickenSoup( sfm.makeChickenSoup());
       soupBuffet.setClamChowder( sfm.makeClamChowder()); 
       soupBuffet.setFishChowder( sfm.makeFishChowder());
       soupBuffet.setMinnestrone( sfm.makeMinnestrone());
       soupBuffet.setPastaFazul( sfm.makePastaFazul()); 
       soupBuffet.setTofuSoup( sfm.makeTofuSoup());
       soupBuffet.setVegetableSoup( sfm.makeVegetableSoup()); 
       tap.test("Base Soup Factory Method", new TestCase(){public void test(){
			 assert ("At the  " + soupBuffet.getSoupBuffetName() + soupBuffet.getTodaysSoups()).equals("basdf");
		}});
       
       
       SoupFactoryMethod bsfm = new BostonSoupFactoryMethodSubclass();
       final SoupBuffet bsb = bsfm.makeSoupBuffet();
       bsb.setSoupBuffetName( bsfm.makeBuffetName());
       bsb.setChickenSoup( bsfm.makeChickenSoup());
       bsb.setClamChowder( bsfm.makeClamChowder());
       bsb.setFishChowder( bsfm.makeFishChowder());
       bsb.setMinnestrone( bsfm.makeMinnestrone());
       bsb.setPastaFazul( bsfm.makePastaFazul());
       bsb.setTofuSoup( bsfm.makeTofuSoup());
       bsb.setVegetableSoup( bsfm.makeVegetableSoup()); 
       tap.test("Boston Soup Factory Method", new TestCase(){public void test(){
			assert ("At the  " + bsb.getSoupBuffetName() + bsb.getTodaysSoups()).equals("bork");
		}});
       
       SoupFactoryMethod hsfm = new HonoluluSoupFactoryMethodSubclass();
       final SoupBuffet hsb = hsfm.makeSoupBuffet();
       hsb.setSoupBuffetName( hsfm.makeBuffetName());
       hsb.setChickenSoup( hsfm.makeChickenSoup());
       hsb.setClamChowder( hsfm.makeClamChowder()); 
       hsb.setFishChowder( hsfm.makeFishChowder());
       hsb.setMinnestrone( hsfm.makeMinnestrone());
       hsb.setPastaFazul( hsfm.makePastaFazul()); 
       hsb.setTofuSoup( hsfm.makeTofuSoup());
       hsb.setVegetableSoup( hsfm.makeVegetableSoup()); 
       tap.test( "Honolulu Factory Method test ", new TestCase(){public void test(){
				assert ("At the  " + hsb.getSoupBuffetName() + hsb.getTodaysSoups()).equals("bork");
		}});


		tap.done();
     }
}      
