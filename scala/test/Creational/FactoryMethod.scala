//TestSoupFactoryMethod - testing the factory method

package test.Creational;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Creational.Factory_Method.*;
import common.*;



public class FactoryMethod {         

	public void thetester( SoupFactoryMethod sfm, String msg ,String expected)
	{
       SoupBuffet soupBuffet = sfm.makeSoupBuffet();
       soupBuffet.setSoupBuffetName( sfm.makeBuffetName());
       soupBuffet.setChickenSoup( sfm.makeChickenSoup());
       soupBuffet.setClamChowder( sfm.makeClamChowder()); 
       soupBuffet.setFishChowder( sfm.makeFishChowder());
       soupBuffet.setMinnestrone( sfm.makeMinnestrone());
       soupBuffet.setPastaFazul( sfm.makePastaFazul()); 
       soupBuffet.setTofuSoup( sfm.makeTofuSoup());
       soupBuffet.setVegetableSoup( sfm.makeVegetableSoup()); 
       org.junit.Assert.assertEquals(msg,
			expected,
			 ("At the  " + soupBuffet.getSoupBuffetName() + soupBuffet.getTodaysSoups())
		);
	}
       

	@Test
   public void base_sfm() {
		thetester( new SoupFactoryMethod(), "Base Soup Factory Method",
			"At the  Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: ClamChowder Fish Chowder: FishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
		);
	}
       
	@Test
   public void boston_sfm() {
		thetester( new BostonSoupFactoryMethodSubclass(), "Boston Soup Factory Method",
			"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
		);
	}
       
	@Test
   public void hono_sfm() {
		thetester( new HonoluluSoupFactoryMethodSubclass(), "Honolulu Soup Factory Method",
			"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
		);
	}
}      
