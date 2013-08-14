package test.Creational;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import common.*;
import Creational.Builder.*;


//TestSoupBuffetBuilder.java - Testing the builder

public class Builder {

   public SoupBuffet CreateSoupBuffet(
     SoupBuffetBuilder soupBuffetBuilder) { 
        soupBuffetBuilder.buildSoupBuffet();
        
        soupBuffetBuilder.setSoupBuffetName();
        
        soupBuffetBuilder.buildChickenSoup();
        soupBuffetBuilder.buildClamChowder();
        soupBuffetBuilder.buildFishChowder();    
        soupBuffetBuilder.buildMinnestrone();
        soupBuffetBuilder.buildPastaFazul();
        soupBuffetBuilder.buildTofuSoup();
        soupBuffetBuilder.buildVegetableSoup();
        
        return soupBuffetBuilder.getSoupBuffet();
   }     
   
	@Test 
   public void thetester() {
       
       SoupBuffet bostonSoupBuffet = CreateSoupBuffet(new BostonSoupBuffetBuilder());
       org.junit.Assert.assertEquals("Boston soup buffet builder test",
			"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			"At the " + bostonSoupBuffet.getSoupBuffetName() + bostonSoupBuffet.getTodaysSoups()
			);

       SoupBuffet honoluluSoupBuffet = 
         CreateSoupBuffet(new HonoluluSoupBuffetBuilder());
       org.junit.Assert.assertEquals("Honolulu soup buffet builder test",
			"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			"At the " + honoluluSoupBuffet.getSoupBuffetName() + honoluluSoupBuffet.getTodaysSoups()
		);
   }
}      
