package test.Creational;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import common.*;
import Creational.Builder.*;


//TestSoupBuffetBuilder.java - Testing the builder

class TestSoupBuffetBuilder {

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
    
   public void thetester() {
       
       SoupBuffet bostonSoupBuffet = CreateSoupBuffet(new BostonSoupBuffetBuilder());
       org.junit.Assert.assertEquals("Boston soup buffet builder test",
			"At the Boston Soup Buffet ",
			"At the " + bostonSoupBuffet.getSoupBuffetName() + bostonSoupBuffet.getTodaysSoups()
			);

       SoupBuffet honoluluSoupBuffet = 
         CreateSoupBuffet(new HonoluluSoupBuffetBuilder());
       org.junit.Assert.assertEquals("Honolulu soup buffet builder test",
			"At the Honolulu Soup Buffet ",
			"At the " + honoluluSoupBuffet.getSoupBuffetName() + honoluluSoupBuffet.getTodaysSoups()
		);
   }
}      
